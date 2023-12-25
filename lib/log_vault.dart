import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:chopper/chopper.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart' as fnd;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oberon_connector/environments.dart';
import 'package:package_info_plus/package_info_plus.dart';
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
  static int inrocessingQueueCount = 0;

  static bool initialized = false;
  static late String _projectCode;

  static late ScreenRecorderController recorderController;

  static AndroidInfo? android;
  static IOSInfo? ios;
  static BundleInfo bundle = BundleInfo();

  static final processBatchController = StreamController<
      (List<RegisteredEvent>, Map<String, Uint8List?>)>.broadcast();
  static late Stream<(List<RegisteredEvent>, Map<String, Uint8List?>)>
      sendsQueue = processBatchController.stream;

  static Future initVault(bool liveStreams, String projectCode) async {
    _projectCode = projectCode;
    debouncingTime =
        liveStreams ? Duration(milliseconds: 200) : Duration(seconds: 3);
    doLiveStreams = liveStreams;
    client = Swagger.create(
        baseUrl: Uri.parse(
      //"http://10.0.2.2:8080",
      "https://oberon-lab.ru",
    ));
    deviceCode = await getDeviceCode();

    if (liveStreams) {
      try {
        final _head = await rootBundle.loadString('.git/HEAD');

        final branch = _head.split('/').last;
        bundle = BundleInfo(branch: branch);
      } catch (ex) {
        print("[OBERON] Не удалось получить информацию о гит-ветке");
        bundle = BundleInfo();
      }
    } else {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      bundle = BundleInfo(
        version: packageInfo.version,
        build: packageInfo.buildNumber,
      );
    }

    if (Platform.isIOS) {
      var deviceInfo = await DeviceInfoPlugin().iosInfo;
      ios = IOSInfo(
        isPhysical: deviceInfo.isPhysicalDevice,
        localizedModel: deviceInfo.localizedModel,
        model: deviceInfo.model,
        systemVersion: deviceInfo.systemVersion,
        systemName: deviceInfo.systemName,
        utsName: UtsName(
          sysName: deviceInfo.utsname.sysname,
          nodeName: deviceInfo.utsname.nodename,
          releaseName: deviceInfo.utsname.release,
          version: deviceInfo.utsname.version,
          machine: deviceInfo.utsname.machine,
        ),
      );
    } else {
      var deviceInfo = await DeviceInfoPlugin().androidInfo;
      android = AndroidInfo(
        id: deviceInfo.id,
        host: deviceInfo.host,
        manifacturer: deviceInfo.manufacturer,
        androidVersion: AndroidVersion(
          previewSdkInt: deviceInfo.version.previewSdkInt,
          baseOS: deviceInfo.version.baseOS,
          securityPatch: deviceInfo.version.securityPatch,
          codeName: deviceInfo.version.codename,
          incremental: deviceInfo.version.incremental,
          release: deviceInfo.version.release,
          sdkInt: deviceInfo.version.sdkInt,
        ),
        board: deviceInfo.board,
        bootLoader: deviceInfo.bootloader,
        brand: deviceInfo.brand,
        device: deviceInfo.device,
        display: DisplayMetrics(
          widthPx: deviceInfo.displayMetrics.widthPx.toInt(),
          heightPx: deviceInfo.displayMetrics.heightPx.toInt(),
          xDpi: deviceInfo.displayMetrics.xDpi.toInt(),
          yDpi: deviceInfo.displayMetrics.yDpi.toInt(),
        ),
        fingerprint: deviceInfo.fingerprint,
        hardware: deviceInfo.hardware,
        isPhysical: deviceInfo.isPhysicalDevice,
        model: deviceInfo.model,
        product: deviceInfo.product,
        serialNumber: deviceInfo.serialNumber,
        supported32BitAbis: deviceInfo.supported32BitAbis,
        supported64BitAbis: deviceInfo.supported64BitAbis,
        supportedAbis: deviceInfo.supportedAbis,
        systemFeatures: deviceInfo.systemFeatures,
        type: deviceInfo.type,
      );
    }

    processBatchController.stream
        .asyncMap((event) {
          inrocessingQueueCount++;
          return event;
        })
        .asyncMap(scheduleSend)
        .asyncMap((event) {
          inrocessingQueueCount--;
          return event;
        })
        .listen((event) {
          print("[OBERON] Пакет обработан");
        });

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
          print("[OBERON] Пакет успешно отправлен");
        });
    initialized = true;
  }

  static final sendingQueue = StreamController<EventsBatch>();

  static void sendBatch(EventsBatch batch) async {
    print(
        "[OBERON] Отправка пакета с ${batch.events.length} событиями. В очареди ${inQueueCount} пакетов на отправку");
    try {
      consuming = true;
      final response = await client.apiConsumerConsumePost(body: batch);
      consuming = false;
    } catch (ex) {
      print("[OBERON] Ошибка отправки пакета $ex");
    }
    //eventsBuffer.removeRange(0, eventsToSend.length - 1);
  }

  static final List<RegisteredEvent> eventsBuffer = [];
  static final Map<String, Uint8List?> screenshots = {};

/*
  static String computeBatchOfScreenshots(dynamic message) {
    final tsStart = DateTime.now();
    final listS = message as List<Uint8List?>;
    //final decoder = img.PngDecoder();
    final encoder = img.GifEncoder();

    int totalSize = 0;

    final pngs = listS.map((Uint8List? e) {
      final png = e != null
          ? img.PngDecoder().decode(e)!.convert(numChannels: 3)
          : null;
      if (png != null) totalSize += (e?.length ?? 0);
      return png;
    });
    print("[OBERON] Screenshot not awailable ${pngs.length}");
    for (final p in pngs) {
      if (p != null) encoder.addFrame(p);
    }

    final apng = encoder.finish()!;
    final baseEncoded = base64Encode(apng.toList(growable: false));
    print(
        "APNG DELAY ${DateTime.now().difference(tsStart).inMilliseconds} size total ${totalSize} size after ${apng.length}");
    return baseEncoded;
  }*/

  static void planSend() {
    final events = eventsBuffer.toList();
    final ss = Map.fromEntries(screenshots.entries);
    screenshots.clear();
    eventsBuffer.clear();
    processBatchController.add((events, ss));
  }

  static void scheduleSend(
      (List<RegisteredEvent>, Map<String, Uint8List?>) request) async {
    //EasyDebounce.cancel("oberon_event");
    final (events, ss) = request;

    ScreenshotsBatch? sbatch;
    if (ss.values.any((element) => element != null)) {
      final imagesGroupedByCrcWithListOfImagesAndEvents = groupBy(
          ss.entries,
          (kv) => kv.value != null
              ? base64Encode(md5.convert(kv.value!.toList()).bytes)
              : null);

      final imagesByCrc = imagesGroupedByCrcWithListOfImagesAndEvents
          .map((key, value) => MapEntry(key, value.firstOrNull?.value));
      final crcByEvent = Map.fromEntries(
          imagesGroupedByCrcWithListOfImagesAndEvents.entries.expand(
              (element) =>
                  element.value.map((e) => MapEntry(e.key, element.key))));
      //final eventsByCrc = groupB

      final images = imagesByCrc.values.toList().cast<Uint8List>();
      final crcs = imagesByCrc.keys.toList();
      final indexes = events
          .map((e) =>
              crcByEvent[e.id] != null ? crcs.indexOf(crcByEvent[e.id]) : -1)
          .toList();

      /*final batch =
          await fnd.compute(computeBatchOfScreenshots, ss.values.toList());*/
      final encodedImages = await fnd.compute(
          (List<Uint8List> value) => value.map((e) => base64Encode(e)).toList(),
          images);
      /* final sIndexes = ss.values
          .toList()
          .asMap()
          .entries
          .map((kv) => kv.value != null ? kv.key : null)
          .where((element) => element != null)
          .cast<int>()
          .toList();*/
      sbatch = ScreenshotsBatch(frames: encodedImages, framesMaping: indexes);
    } else {
      sbatch = ScreenshotsBatch(
        frames: [],
        framesMaping: [for (final e in events) -1],
      );
    }
    //print(batch.length / 1024 / 1024);
    sendingQueue.add(
      EventsBatch(
        bundle: bundle,
        screenshotsBatch: sbatch,
        os: android != null ? DeviceOS.android : DeviceOS.ios,
        androidInfo: android,
        iosInfo: ios,
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
      planSend,
    );
    screenshots[event.id] = screenshot;
    eventsBuffer.add(event);
  }

  static bool consuming = false;

  static Uuid uid = Uuid();

  static Map<String, dynamic> encodePayload(Map<String, dynamic> map) =>
      map.map((key, value) {
        dynamic out;
        if (value is DateTime) {
          out = value.toString();
        } else if (value is Map<String, dynamic>) {
          out = encodePayload(value);
        } else if (value is List<dynamic>) {
          out = value.map((e) => encodePayload(e));
        } else if (value is String) {
          out = value;
        } else if (value is int) {
          out = value;
        } else if (value is double) {
          out = value;
        } else {
          out = value.toString();
        }
        return MapEntry(key, out);
      });

  static RegisteredEvent mapEventToRemote(MonitoringEntry entry) {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final id = uid.v1();
    return RegisteredEvent(
        id: id,
        timestamp: ts,
        identification: entry.identification,
        kind: entry.kind,
        scope: entry.scope,
        severity: entry.severity,
        payload: entry.payload != null
            ? jsonEncode(encodePayload(entry.payload!))
            : null);
  }

/*
  void sendLog(MonitoringEntry entry) {}*/

  static void addEntry(MonitoringEntry entry, [bool liveOnly = false]) async {
    if (!doLiveStreams && liveOnly) {
      return;
    }
    if (!initialized) {
      print(entry);
      return;
    }
    // entries.add(entry);
    //logsStreamController.sink.add(entry);
    //print("got entry ${entry.kind}");
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
    //print(exception.toString() + trace.toString());
    try {
      final t = trace != null ? Trace.from(trace) : null;
      addEntry(MonitoringEntry(
          identification: exception.toString(),
          kind: "Исключение",
          logTimestamp: DateTime.now(),
          severity: "Ошибка",
          screenshot: null,
          scope: scope,
          payload: {
            "frames": [
              if (t != null)
                for (final trace in t.frames)
                  StackFrame(
                          funcName: trace.member ?? "",
                          column: trace.column,
                          line: trace.line,
                          path: trace.uri.toString())
                      .toJson(),
            ],
          }));
    } catch (ex) {
      print("[OBERON] Ошибка сборка сведений об ошибке");
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
