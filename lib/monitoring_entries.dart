import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

part 'monitoring_entries.g.dart';

part 'monitoring_entries.freezed.dart';

enum StateOpType {
  write,
}

enum StarageOperationType {
  write,
  read,
}

enum MonitorEventKind { state, network, log, storage, exception, tap }

enum EventSeverity {
  critical,
  info,
  trace,
}

@freezed
class MonitoringNetworkCallPayload with _$MonitoringNetworkCallPayload {
  factory MonitoringNetworkCallPayload.custom({required String content}) =
      _MonitoringNetworkCallPayloadCustomCtor;

  factory MonitoringNetworkCallPayload.json({required String json}) =
      _MonitoringNetworkCallPayloadJsonCtor;

  factory MonitoringNetworkCallPayload.formdata({
    required Map<String, String> data,
  }) = _MonitoringNetworkCallPayloadFormDataCtor;

  factory MonitoringNetworkCallPayload.fromJson(Map<String, dynamic> json) =>
      _$MonitoringNetworkCallPayloadFromJson(json);
}

@freezed
class StackFrame with _$StackFrame {
  const StackFrame._();

  factory StackFrame({
    required String? funcName,
    required int? line,
    required int? column,
    required String path,
  }) = _StackFrameCtor;

  static StackFrame fromTrace(Frame trace) => StackFrame(
      funcName: trace.member ?? "",
      column: trace.column,
      line: trace.line,
      path: trace.uri.toString());

  factory StackFrame.fromJson(Map<String, dynamic> json) =>
      _$StackFrameFromJson(json);
}

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}

@unfreezed
class MonitoringEntry with _$MonitoringEntry {
  const MonitoringEntry._();

  factory MonitoringEntry.networkCall({
    required EventSeverity severity,
    required String uri,
    required String id,
    @DateTimeConverter() required DateTime logTimestamp,
    @DateTimeConverter() required DateTime start,
    required Map<String, String> requestQuery,
    required MonitoringNetworkCallPayload request,
    required Map<String, String> requestHeaders,
    DateTime? end,
    required int statusCode,
    Map<String, String>? responseHeaders,
    required MonitoringNetworkCallPayload? response,
  }) = MonitoringEntryNetworkCall;

  factory MonitoringEntry.storageOperation({
    required EventSeverity severity,
    required StarageOperationType storage,
    required String storageName,
    required String key,
    required String value,
    @DateTimeConverter() required DateTime logTimestamp,
    required List<StackFrame> frames,
  }) = MonitoringEntryStarageOperation;

  factory MonitoringEntry.exception({
    required EventSeverity severity,
    required String text,
    required List<StackFrame> frames,
  }) = MonitoringEntryException;

  factory MonitoringEntry.textLog({
    required EventSeverity severity,
    required String text,
    required String id,
    @DateTimeConverter() required DateTime logTimestamp,
    required List<StackFrame> frames,
  }) = MonitoringEntryTextLog;

  factory MonitoringEntry.stateChange({
    required EventSeverity severity,
    required String text,
    required String id,
    @DateTimeConverter() required DateTime logTimestamp,
    required List<StackFrame> frames,
  }) = MonitoringEntryStateLog;

  factory MonitoringEntry.tapEvent({
    required EventSeverity severity,
    required double x,
    required double y,
    @DateTimeConverter() required DateTime logTimestamp,
  }) = MonitoringEntryTapEventLog;

/*
  factory MonitoringEntry.blocEvent({
    required String sourceBlocType,
    required BlocEventType type,
    String? eventType,
    required DateTime logTimestamp,
  }) = MonitoringBlocEventLog;*/

  MonitorEventKind get kind => this.map(
        exception: (value) => MonitorEventKind.exception,
        storageOperation: (value) => MonitorEventKind.storage,
        networkCall: (value) => MonitorEventKind.network,
        textLog: (value) => MonitorEventKind.log,
        stateChange: (value) => MonitorEventKind.state,
        tapEvent: (value) => MonitorEventKind.tap,
      );

  factory MonitoringEntry.fromJson(Map<String, dynamic> json) =>
      _$MonitoringEntryFromJson(json);
}
