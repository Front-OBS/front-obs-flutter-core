// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonitoringNetworkCallPayloadCustomCtorImpl
    _$$MonitoringNetworkCallPayloadCustomCtorImplFromJson(
            Map<String, dynamic> json) =>
        _$MonitoringNetworkCallPayloadCustomCtorImpl(
          content: json['content'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MonitoringNetworkCallPayloadCustomCtorImplToJson(
        _$MonitoringNetworkCallPayloadCustomCtorImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'runtimeType': instance.$type,
    };

_$MonitoringNetworkCallPayloadJsonCtorImpl
    _$$MonitoringNetworkCallPayloadJsonCtorImplFromJson(
            Map<String, dynamic> json) =>
        _$MonitoringNetworkCallPayloadJsonCtorImpl(
          json: json['json'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MonitoringNetworkCallPayloadJsonCtorImplToJson(
        _$MonitoringNetworkCallPayloadJsonCtorImpl instance) =>
    <String, dynamic>{
      'json': instance.json,
      'runtimeType': instance.$type,
    };

_$MonitoringNetworkCallPayloadFormDataCtorImpl
    _$$MonitoringNetworkCallPayloadFormDataCtorImplFromJson(
            Map<String, dynamic> json) =>
        _$MonitoringNetworkCallPayloadFormDataCtorImpl(
          data: Map<String, String>.from(json['data'] as Map),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MonitoringNetworkCallPayloadFormDataCtorImplToJson(
        _$MonitoringNetworkCallPayloadFormDataCtorImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$StackFrameCtorImpl _$$StackFrameCtorImplFromJson(Map<String, dynamic> json) =>
    _$StackFrameCtorImpl(
      funcName: json['funcName'] as String?,
      line: json['line'] as int?,
      column: json['column'] as int?,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$StackFrameCtorImplToJson(
        _$StackFrameCtorImpl instance) =>
    <String, dynamic>{
      'funcName': instance.funcName,
      'line': instance.line,
      'column': instance.column,
      'path': instance.path,
    };

_$MonitoringEntryNetworkCallImpl _$$MonitoringEntryNetworkCallImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringEntryNetworkCallImpl(
      severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
      uri: json['uri'] as String,
      id: json['id'] as String,
      logTimestamp:
          const DateTimeConverter().fromJson(json['logTimestamp'] as String),
      start: const DateTimeConverter().fromJson(json['start'] as String),
      requestQuery: Map<String, String>.from(json['requestQuery'] as Map),
      request: MonitoringNetworkCallPayload.fromJson(
          json['request'] as Map<String, dynamic>),
      requestHeaders: Map<String, String>.from(json['requestHeaders'] as Map),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      statusCode: json['statusCode'] as int,
      responseHeaders: (json['responseHeaders'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      response: json['response'] == null
          ? null
          : MonitoringNetworkCallPayload.fromJson(
              json['response'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MonitoringEntryNetworkCallImplToJson(
        _$MonitoringEntryNetworkCallImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'uri': instance.uri,
      'id': instance.id,
      'logTimestamp': const DateTimeConverter().toJson(instance.logTimestamp),
      'start': const DateTimeConverter().toJson(instance.start),
      'requestQuery': instance.requestQuery,
      'request': instance.request,
      'requestHeaders': instance.requestHeaders,
      'end': instance.end?.toIso8601String(),
      'statusCode': instance.statusCode,
      'responseHeaders': instance.responseHeaders,
      'response': instance.response,
      'runtimeType': instance.$type,
    };

const _$EventSeverityEnumMap = {
  EventSeverity.critical: 'critical',
  EventSeverity.info: 'info',
  EventSeverity.trace: 'trace',
};

_$MonitoringEntryStarageOperationImpl
    _$$MonitoringEntryStarageOperationImplFromJson(Map<String, dynamic> json) =>
        _$MonitoringEntryStarageOperationImpl(
          severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
          storage: $enumDecode(_$StarageOperationTypeEnumMap, json['storage']),
          storageName: json['storageName'] as String,
          key: json['key'] as String,
          value: json['value'] as String,
          logTimestamp: const DateTimeConverter()
              .fromJson(json['logTimestamp'] as String),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MonitoringEntryStarageOperationImplToJson(
        _$MonitoringEntryStarageOperationImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'storage': _$StarageOperationTypeEnumMap[instance.storage]!,
      'storageName': instance.storageName,
      'key': instance.key,
      'value': instance.value,
      'logTimestamp': const DateTimeConverter().toJson(instance.logTimestamp),
      'runtimeType': instance.$type,
    };

const _$StarageOperationTypeEnumMap = {
  StarageOperationType.write: 'write',
  StarageOperationType.read: 'read',
};

_$MonitoringEntryExceptionImpl _$$MonitoringEntryExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringEntryExceptionImpl(
      severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
      text: json['text'] as String,
      frames: (json['frames'] as List<dynamic>)
          .map((e) => StackFrame.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MonitoringEntryExceptionImplToJson(
        _$MonitoringEntryExceptionImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'text': instance.text,
      'frames': instance.frames,
      'runtimeType': instance.$type,
    };

_$MonitoringEntryTextLogImpl _$$MonitoringEntryTextLogImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringEntryTextLogImpl(
      severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
      text: json['text'] as String,
      id: json['id'] as String,
      logTimestamp:
          const DateTimeConverter().fromJson(json['logTimestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MonitoringEntryTextLogImplToJson(
        _$MonitoringEntryTextLogImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'text': instance.text,
      'id': instance.id,
      'logTimestamp': const DateTimeConverter().toJson(instance.logTimestamp),
      'runtimeType': instance.$type,
    };

_$MonitoringEntryStateLogImpl _$$MonitoringEntryStateLogImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringEntryStateLogImpl(
      severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
      text: json['text'] as String,
      id: json['id'] as String,
      logTimestamp:
          const DateTimeConverter().fromJson(json['logTimestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MonitoringEntryStateLogImplToJson(
        _$MonitoringEntryStateLogImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'text': instance.text,
      'id': instance.id,
      'logTimestamp': const DateTimeConverter().toJson(instance.logTimestamp),
      'runtimeType': instance.$type,
    };

_$MonitoringEntryTapEventLogImpl _$$MonitoringEntryTapEventLogImplFromJson(
        Map<String, dynamic> json) =>
    _$MonitoringEntryTapEventLogImpl(
      severity: $enumDecode(_$EventSeverityEnumMap, json['severity']),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      logTimestamp:
          const DateTimeConverter().fromJson(json['logTimestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MonitoringEntryTapEventLogImplToJson(
        _$MonitoringEntryTapEventLogImpl instance) =>
    <String, dynamic>{
      'severity': _$EventSeverityEnumMap[instance.severity]!,
      'x': instance.x,
      'y': instance.y,
      'logTimestamp': const DateTimeConverter().toJson(instance.logTimestamp),
      'runtimeType': instance.$type,
    };
