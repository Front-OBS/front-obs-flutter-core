import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:chopper/chopper.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart' as fnd;
import 'package:flutter/material.dart';
import 'package:oberon_connector/environments.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

import 'api/swagger.swagger.dart';
import 'monitoring_entries.dart';
import 'observers/ui.dart';
import 'package:image/image.dart' as img;

Future<String> getDeviceCode() async {
  return Uuid.unparse(md5
      .convert(
          Utf8Encoder().convert((await DeviceUuid().getUUID()) ?? "UNKNOWN"))
      .bytes);
}

class OberonAuth {
  static String? id;

  static void setUserID(String id) {
    OberonAuth.id = id;
  }
}

class LogVault extends ChangeNotifier {
  static final logsStreamController =
      StreamController<MonitoringEntry>.broadcast();
  static late Stream<MonitoringEntry> logs = logsStreamController.stream;

  static late Swagger client;

  static late final debouncingTime;

  static String deviceCode = "";

  static late bool doLiveStreams;

  static int inQueueCount = 0;

  static bool initialized = false;
  static late String _projectCode;

  static late ScreenRecorderController recorderController;

  static late Map<DeviceInfoEntryKind, String> devicePrams;

  static Future initVault(bool liveStreams, String projectCode) async {
    _projectCode = projectCode;
    debouncingTime =
        liveStreams ? Duration(milliseconds: 200) : Duration(seconds: 3);
    doLiveStreams = liveStreams;
    client = Swagger.create(baseUrl: Uri.parse("https://oberon-lab.ru"));
    deviceCode = await getDeviceCode();

    if (Platform.isIOS) {
      var deviceInfo = await DeviceInfoPlugin().iosInfo;
      devicePrams = {
        DeviceInfoEntryKind.isphysical: deviceInfo.isPhysicalDevice.toString(),
        DeviceInfoEntryKind.localizedmodel: deviceInfo.localizedModel,
        DeviceInfoEntryKind.model: deviceInfo.model,
        DeviceInfoEntryKind.ostype: "IOS",
        DeviceInfoEntryKind.iosversion: deviceInfo.systemVersion,
        DeviceInfoEntryKind.systemname: deviceInfo.systemName,
        DeviceInfoEntryKind.utsname:
            "${deviceInfo.utsname.machine}|${deviceInfo.utsname.nodename}|${deviceInfo.utsname.release}|${deviceInfo.utsname.sysname}|${deviceInfo.utsname.version}"
      };
    } else {
      var deviceInfo = await DeviceInfoPlugin().androidInfo;
      devicePrams = {
        DeviceInfoEntryKind.id: deviceInfo.id,
        DeviceInfoEntryKind.host: deviceInfo.host,
        DeviceInfoEntryKind.manifacturer: deviceInfo.manufacturer,
        DeviceInfoEntryKind.androidversion:
            "${deviceInfo.version.release} (${deviceInfo.version.sdkInt})",
        DeviceInfoEntryKind.board: deviceInfo.board,
        DeviceInfoEntryKind.bootloader: deviceInfo.bootloader,
        DeviceInfoEntryKind.brand: deviceInfo.brand,
        DeviceInfoEntryKind.device: deviceInfo.device,
        DeviceInfoEntryKind.display: deviceInfo.display,
        DeviceInfoEntryKind.displaymetrics:
            "${deviceInfo.displayMetrics.widthPx}x${deviceInfo.displayMetrics.heightPx} (${deviceInfo.displayMetrics.sizeInches}) DPI ${deviceInfo.displayMetrics.xDpi}",
        DeviceInfoEntryKind.fingerprint: deviceInfo.fingerprint,
        DeviceInfoEntryKind.hardware: deviceInfo.hardware,
        DeviceInfoEntryKind.isphysical: deviceInfo.isPhysicalDevice.toString(),
        DeviceInfoEntryKind.model: deviceInfo.model,
        DeviceInfoEntryKind.ostype: "ANDROID",
        DeviceInfoEntryKind.product: deviceInfo.product,
        DeviceInfoEntryKind.serialnumber: deviceInfo.serialNumber,
        DeviceInfoEntryKind.supported32bitabis:
            deviceInfo.supported32BitAbis.join(","),
        DeviceInfoEntryKind.supported64bitabis:
            deviceInfo.supported64BitAbis.join(","),
        DeviceInfoEntryKind.supportedabis: deviceInfo.supportedAbis.join(","),
        DeviceInfoEntryKind.systemfeatures: deviceInfo.systemFeatures.join(","),
        DeviceInfoEntryKind.type: deviceInfo.type,
      };
    }

    sendingQueue.stream
        .asyncMap((event) {
          inQueueCount++;
          return event;
        })
        .asyncMap(sendBatch)
        .asyncMap((event) {
          inQueueCount--;
          return event;
        })
        .listen((event) {
          print("Sent batch");
        });
    initialized = true;
  }

  static final sendingQueue = StreamController<EventsBatch>();

  static void sendBatch(EventsBatch batch) async {
    print(
        "Sending batch with ${batch.events.length} ewents. In queue ${inQueueCount}");
    try {
      consuming = true;
      final response = await client.apiConsumerConsumePost(body: batch);
      consuming = false;
    } catch (ex) {
      print("BATCH SEND ERR $ex tried send");
    }
    //eventsBuffer.removeRange(0, eventsToSend.length - 1);
  }

  static final List<RegisteredEvent> eventsBuffer = [];
  static final Map<String, Uint8List?> screenshots = {};

  static String computeBatchOfScreenshots(dynamic message) {
    final tsStart = DateTime.now();
    final listS = message as List<Uint8List?>;
    //final decoder = img.PngDecoder();
    final encoder = img.GifEncoder();

    final pngs =
        listS.map((e) => e != null ? img.PngDecoder().decode(e)!.convert(numChannels: 3) : null);
    print("Creating APNG for ${pngs}");
    for (final p in pngs) {
      if (p != null) encoder.addFrame(p);
    }

    final apng = encoder.finish()!;
    final baseEncoded = base64Encode(apng.toList(growable: false));
    print("APNG DELAY ${DateTime.now().difference(tsStart).inMilliseconds}");
    return baseEncoded;
  }

  static void scheduleSend() async {
    final events = eventsBuffer.toList();
    final ss = Map.fromEntries(screenshots.entries);
    screenshots.clear();
    eventsBuffer.clear();
    //EasyDebounce.cancel("oberon_event");

    ScreenshotsBatch? sbatch;
    if (ss.values.any((element) => element != null)) {
      final batch =
          await fnd.compute(computeBatchOfScreenshots, ss.values.toList());
      final sIndexes = ss.values
          .toList()
          .asMap()
          .entries
          .map((kv) => kv.value != null ? kv.key : null)
          .where((element) => element != null)
          .cast<int>()
          .toList();
      sbatch = ScreenshotsBatch(data: batch, frameIndexes: sIndexes);
    }
    //print(batch.length / 1024 / 1024);
    sendingQueue.add(
      EventsBatch(
        screenshotsBatch: sbatch,
        deviceInfo: devicePrams.map((key, value) => MapEntry(key.name, value)),
        projectID: _projectCode,
        isLive: doLiveStreams,
        identification: Identification(
          code: deviceCode,
          userIdentification: OberonAuth.id,
        ),
        events: events,
      ),
    );
  }

  static void scheduleEvent(RegisteredEvent event, Uint8List? screenshot) {
    EasyDebounce.debounce(
      'oberon_event',
      debouncingTime,
      scheduleSend,
    );
    screenshots[event.id] = screenshot;
    eventsBuffer.add(event);
  }

  static bool consuming = false;

  static RegisteredEvent mapEventToRemote(MonitoringEntry entry) {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final id = Uuid().v1();
    return entry.map(
      scrollEvent: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        scrollEvent: ScrollEvent(
          scope: value.scope,
          identification: value.identification,
          payload: value.payload,
          offsetEnd: value.offsetTo,
          offsetStart: value.offsetFrom,
          viewport: value.viewport,
        ),
        kind: EventKind.swaggerGeneratedUnknown,
      ),
      navigationEvent: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.navigation,
        navigationEvent: NavigationEvent(
          scope: value.scope,
          kind: value.type,
          routeName: value.routeName,
          previousRouteName: value.previousRouteName,
          arguments: value.arguments,
          previousArguments: value.previousArguments,
          popResult: value.popResult,
        ),
      ),
      tapEvent: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        tapEvent: TapEvent(
          scope: value.scope,
          x: value.coordX,
          y: value.coordY,
          identification: value.identification,
          payload: value.payload,
        ),
        kind: EventKind.swaggerGeneratedUnknown,
      ),
      networkCall: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.network,
        networkEvent: NetworkEvent(
          scope: value.scope,
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
              kind: NetworkPayloadKind.custom,
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
              kind: NetworkPayloadKind.custom,
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
          scope: value.scope,
          key: value.key,
          value: value.value,
        ),
      ),
      exception: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.exception,
        exceptionEvent: ExceptionEvent(
          scope: value.scope,
          exception: value.text,
          traces: value.frames
              .map(
                (e) => TraceEntry(
                  column: e.column ?? 0,
                  line: e.line ?? 0,
                  function: e.funcName ?? "MISSING",
                  path: e.path,
                ),
              )
              .toList(),
        ),
      ),
      event: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.text,
        textEvent: TextEvent(
          scope: value.scope,
          text: value.event,
          payload: value.payload,
        ),
      ),
      stateChange: (value) => RegisteredEvent(
        id: id,
        timestamp: ts,
        kind: EventKind.state,
        stateEvent: StateEvent(
          scope: value.scope,
          value: value.payload,
          stateName: value.key,
        ),
      ),
    );
  }

/*
  void sendLog(MonitoringEntry entry) {}*/

  static void addEntry(MonitoringEntry entry) async {
    if (!initialized) {
      print(entry);
      return;
    }
    // entries.add(entry);
    //logsStreamController.sink.add(entry);
    print("got entry ${entry.kind}");
    final currentScreenshot = await recorderController.captureScreen();
    //print("Has screenshot ${currentScreenshot != null}");

    scheduleEvent(
        mapEventToRemote(entry.copyWith(screenshot: currentScreenshot)),
        currentScreenshot);
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

  static void addException(Object exception, StackTrace? trace,
      {String scope = "Общие ошибки"}) {
    print(exception.toString() + trace.toString());
    try {
      final t = trace != null ? Trace.from(trace) : null;
      addEntry(MonitoringEntry.exception(
        scope: scope,
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
    } catch (ex) {
      print("Ошибка запили исключения");
    }
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
