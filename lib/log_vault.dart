import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:oberon_connector/environments.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

import 'api/swagger.swagger.dart';
import 'monitoring_entries.dart';

Future<String> getDeviceCode() async {
  return Uuid.unparse(md5
      .convert(
          Utf8Encoder().convert((await DeviceUuid().getUUID()) ?? "UNKNOWN"))
      .bytes);
}

class LogVault extends ChangeNotifier {
  static final logsStreamController =
      StreamController<MonitoringEntry>.broadcast();
  static late Stream<MonitoringEntry> logs = logsStreamController.stream;

  static late Swagger client;

  static late final debouncingTime;

  static String deviceCode = "";

  static late bool doLiveStreams;

  static Future initVault(bool liveStreams) async {
    debouncingTime =
        liveStreams ? Duration(milliseconds: 50) : Duration(seconds: 5);
    doLiveStreams = liveStreams;
    client = Swagger.create(baseUrl: Uri.parse("https://oberon-lab.ru/"));
    deviceCode = await getDeviceCode();

    await openSendStream();
  }

  static late StreamController<RegisteredEvent> eventsRemoteController;

  static late StreamController<EventsBatch> sendRequests;

  static void sendBatch() async {
    print("sending batch with ${eventsBuffer.length} events");
    EasyDebounce.cancel("oberon_event");

    var eventsToSend = eventsBuffer.toList();

    try {
      consuming = true;
      final response = await client.apiConsumerConsumePost(
        body: EventsBatch(
          projectKey: "8e8b623a-fcff-4c9d-bfb5-606fd90fe02d",
          isLive: doLiveStreams,
          identification: Identification(
            code: deviceCode,
          ),
          events: eventsBuffer,
        ),
      );
      consuming = false;
    } catch (ex) {
      print("BATCH SEND ERR $ex tried send ${eventsToSend.length} buffer size ${eventsBuffer.length}");
    }
    eventsBuffer.removeRange(0, eventsToSend.length - 1);
  }

  static final List<RegisteredEvent> eventsBuffer = [];

  static void scheduleEvent(RegisteredEvent event) {
    EasyDebounce.debounce(
      'oberon_event',
      debouncingTime,
      sendBatch,
    );
    eventsBuffer.add(event);
  }

  static bool consuming = false;

/*
  static Future connectToConsumer() async {
    try {
      if (consuming) {
        print("ALREDY OPENED CONNECTION");
        return;
      }
      consuming = true;
      final client = grpc.EventConsumerClient(channel);
      final response = await client.consumeEvents();
      consuming = false;
    } catch (ex) {
      Future.delayed(
        Duration(seconds: 3),
        () {
          print("Reconnecting to Oberon consumer");
          connectToConsumer();
        },
      );
      print(ex);
    } finally {
      consuming = false;
    }
  }*/

  static Future openSendStream() async {
    eventsRemoteController = StreamController.broadcast();
    sendRequests = StreamController.broadcast();

    eventsRemoteController.stream.listen(scheduleEvent);
    sendRequests.stream.listen((event) {
      print("SENDING EVENTS ${event.events?.length}");
    });
  }

  static RegisteredEvent mapEventToRemote(MonitoringEntry entry) {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final id = Uuid().v1();
    return entry.map(
      tapEvent: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.swaggerGeneratedUnknown,
      ),
      networkCall: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.network,
        networkEvent: NetworkEvent(
          requestHeaders: value.requestHeaders,
          responseHeaders: value.responseHeaders!,
          url: value.uri,
          statusCode: value.statusCode,
          requestPayload: value.request.map(
            json: (value) => NetworkPayload(
              kind: NetworkPayloadKind.json,
              json: value.json,
            ),
            custom: (value) => NetworkPayload(
              kind: NetworkPayloadKind.json,
              custom: value.content,
            ),
            formdata: (value) => NetworkPayload(
              formData: value.data,
              kind: NetworkPayloadKind.formdata,
            ),
          ),
          responsePayload: value.response?.map(
            json: (value) => NetworkPayload(
              kind: NetworkPayloadKind.json,
              json: value.json,
            ),
            custom: (value) => NetworkPayload(
              kind: NetworkPayloadKind.json,
              custom: value.content,
            ),
            formdata: (value) => NetworkPayload(
              formData: value.data,
              kind: NetworkPayloadKind.formdata,
            ),
          ),
        ),
      ),
      storageOperation: (value) => RegisteredEvent(
        timestamp: ts,
        id: id,
        kind: EventKind.swaggerGeneratedUnknown,
        storageEvent: StorageEvent(
          key: value.key,
          value: value.value,
        ),
      ),
      exception: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.exception,
        exceptionEvent: ExceptionEvent(
          exception: value.text,
          traces: value.frames
              .map(
                (e) => TraceEntry(
                  column: e.column!,
                  line: e.line!,
                  function: e.funcName!,
                  path: e.path,
                ),
              )
              .toList(),
        ),
      ),
      textLog: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.text,
        textEvent: TextEvent(
          text: value.text,
        ),
      ),
      stateChange: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.state,
        stateEvent: StateEvent(
          value: value.text,
          stateName: value.id,
        ),
      ),
    );
  }

/*
  void sendLog(MonitoringEntry entry) {}*/

  static void addEntry(MonitoringEntry entry) {
    // entries.add(entry);
    //logsStreamController.sink.add(entry);
    print("got entry ${entry.kind}");
    eventsRemoteController.add(mapEventToRemote(entry));
    //notifyListeners();
  }

/*
  void addBlocCreateEntry(Object bloc) {
    addEntry(MonitoringEntry.blocEvent(
      severity: EventSeverity.info,
      sourceBlocType: bloc.runtimeType.toString(),
      type: BlocEventType.create,
      logTimestamp: DateTime.now(),
    ));
  }*/

  static void addException(Object exception, StackTrace? trace) {
    final t = trace != null ? Trace.from(trace) : null;
    addEntry(MonitoringEntry.exception(
      severity: EventSeverity.info,
      text: exception.toString(),
      frames: [
        if (t != null)
          for (final trace in t.frames)
            StackFrame(
                funcName: trace.member ?? "",
                column: trace.column,
                line: trace.line,
                path: trace.uri.toString()),
      ],
    ));
  }

/*
  void addBlocEventEntry(Object bloc, Object? event) {
    addEntry(
      MonitoringEntry.blocEvent(
        severity: EventSeverity.info,
        sourceBlocType: bloc.runtimeType.toString(),
        type: BlocEventType.event,
        eventType: event.runtimeType.toString(),
        logTimestamp: DateTime.now(),
      ),
    );
  }

  void addBlocStateEntry(Object bloc, Object nextState) {
    addEntry(
      MonitoringEntry.blocEvent(
        sourceBlocType: bloc.runtimeType.toString(),
        type: BlocEventType.stateChange,
        eventType: nextState.runtimeType.toString(),
        logTimestamp: DateTime.now(),
      ),
    );
  }*/

  static List<MonitoringEntry> entries = [];
}
