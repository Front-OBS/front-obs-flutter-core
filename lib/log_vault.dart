import 'dart:async';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:oberon_connector/environments.dart';
import 'package:oberon_connector/grpc/eventconsumer.pbgrpc.dart' as grpc;
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

import 'monitoring_entries.dart';

class LogVault extends ChangeNotifier {
  static final logsStreamController =
      StreamController<MonitoringEntry>.broadcast();
  static late Stream<MonitoringEntry> logs = logsStreamController.stream;

  static late ClientChannel channel;

  static final debouncingTime = Duration(milliseconds: 50);

  static String deviceCode = "";

  static Future initVault(IApplicationEnvironment env) async {
    channel = GrpcOrGrpcWebClientChannel.grpc("84.38.185.37",
        port: 5001,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ));
    deviceCode = await DeviceUuid().getUUID() ?? "UNKNOWN";
    await openSendStream();
  }

  static late StreamController<grpc.RegisteredAppEvent> eventsRemoteController;

  static late StreamController<grpc.EventsBatch> sendRequests;

  static void sendBatch() {
    print("sending batch with ${eventsBuffer.length} events");
    EasyDebounce.cancel("oberon_event");

    sendRequests.sink.add(
      grpc.EventsBatch(
        isLive: true,
        identification: grpc.IdentificationInfo(
          code: deviceCode,
        ),
        batchId: Uuid().v1(),
        events: eventsBuffer,
      ),
    );
    eventsBuffer.clear();
  }

  static final List<grpc.RegisteredAppEvent> eventsBuffer = [];

  static void scheduleEvent(grpc.RegisteredAppEvent event) {
    EasyDebounce.debounce(
      'oberon_event',
      debouncingTime,
      sendBatch,
    );
    eventsBuffer.add(event);
  }

  static Future connectToConsumer() async {
    try {
      final client = grpc.EventConsumerClient(channel);
      final response = await client.consumeEvents(sendRequests.stream);
    } catch (ex) {
      Future.delayed(
        Duration(seconds: 3),
        () {
          print("Reconnecting to Oberon consumer");
          connectToConsumer();
        },
      );
      print(ex);
    }
  }

  static Future openSendStream() async {
    eventsRemoteController = StreamController.broadcast();
    sendRequests = StreamController.broadcast();

    eventsRemoteController.stream.listen(scheduleEvent);
    sendRequests.stream.listen((event) {
      print("SENDING EVENTS ${event.events.length}");
    });

    Future.microtask(() async {
      connectToConsumer();
    });
  }

  static grpc.RegisteredAppEvent mapEventToRemote(MonitoringEntry entry) {
    final ts = Int64(DateTime.now().millisecondsSinceEpoch);
    final id = Uuid().v1();
    return entry.map(
      networkCall: (value) => grpc.RegisteredAppEvent(
        id: id,
        timestamp: ts,
        network: grpc.NetworkRequest(
          requestHeaders: value.requestHeaders,
          responseHeaders: value.responseHeaders,
          url: value.uri,
          statusCode: value.statusCode,
          requestPayload: value.request.map(
            json: (value) => grpc.NetworkCallPayload(
              json: value.json,
            ),
            custom: (value) => grpc.NetworkCallPayload(
              custom: value.content,
            ),
            formdata: (value) => grpc.NetworkCallPayload(
              form: grpc.FormBody(entries: value.data),
            ),
          ),
          responsePayload: value.response?.map(
            json: (value) => grpc.NetworkCallPayload(
              json: value.json,
            ),
            custom: (value) => grpc.NetworkCallPayload(
              custom: value.content,
            ),
            formdata: (value) => grpc.NetworkCallPayload(
              form: grpc.FormBody(entries: value.data),
            ),
          ),
        ),
      ),
      storageOperation: (value) => grpc.RegisteredAppEvent(
        timestamp: ts,
        id: id,
        storage: grpc.StorageOperation(
          operation: value.storage == StarageOperationType.write
              ? grpc.StorageOperationKind.write
              : grpc.StorageOperationKind.read,
        ),
      ),
      exception: (value) => grpc.RegisteredAppEvent(
        id: id,
        timestamp: ts,
        exception: grpc.ExceptionEvent(
          exception: value.text,
          traces: value.frames.map(
            (e) => grpc.Trace(
              column: e.column,
              line: e.line,
              function: e.funcName,
              path: e.path,
            ),
          ),
        ),
      ),
      textLog: (value) => grpc.RegisteredAppEvent(
        id: id,
        timestamp: ts,
        text: grpc.TextAppEvent(
          text: value.text,
          traces: value.frames.map(
            (e) => grpc.Trace(
              column: e.column,
              line: e.line,
              function: e.funcName,
              path: e.path,
            ),
          ),
        ),
      ),
      stateChange: (value) => grpc.RegisteredAppEvent(
        id: id,
        timestamp: ts,
        stateChange: grpc.StateChangeEvent(
          value: value.text,
          stateName: value.id,
          traces: value.frames.map(
            (e) => grpc.Trace(
              column: e.column,
              line: e.line,
              function: e.funcName,
              path: e.path,
            ),
          ),
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
