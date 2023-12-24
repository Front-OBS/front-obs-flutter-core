import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';
import 'package:image/image.dart' as img;

part 'monitoring_entries.g.dart';

part 'monitoring_entries.freezed.dart';

enum StateOpType {
  write,
}

enum StarageOperationType {
  write,
  read,
}

enum MonitorEventKind {
  state,
  network,
  log,
  storage,
  exception,
  tap,
  navigation,
  scroll
}

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
  factory MonitoringEntry({
    Uint8List? screenshot,
    required String scope,
    required String identification,
    required String kind,
    required String severity,
    required Map<String, dynamic>? payload,
    @DateTimeConverter() required DateTime logTimestamp,
  }) = _;

/*
  factory MonitoringEntry.fromJson(Map<String, dynamic> json) =>
      _$MonitoringEntryFromJson(json);*/
}
