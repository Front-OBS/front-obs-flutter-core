// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      code: json['code'] as String,
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

EventsBatch _$EventsBatchFromJson(Map<String, dynamic> json) => EventsBatch(
      isLive: json['isLive'] as bool,
      identification: json['identification'] == null
          ? null
          : Identification.fromJson(
              json['identification'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => RegisteredEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      projectKey: json['projectKey'] as String,
    );

Map<String, dynamic> _$EventsBatchToJson(EventsBatch instance) =>
    <String, dynamic>{
      'isLive': instance.isLive,
      'identification': instance.identification?.toJson(),
      'events': instance.events.map((e) => e.toJson()).toList(),
      'projectKey': instance.projectKey,
    };

Identification _$IdentificationFromJson(Map<String, dynamic> json) =>
    Identification(
      code: json['code'] as String,
      userIdentification: json['userIdentification'] as String?,
    );

Map<String, dynamic> _$IdentificationToJson(Identification instance) =>
    <String, dynamic>{
      'code': instance.code,
      'userIdentification': instance.userIdentification,
    };

RegisteredEvent _$RegisteredEventFromJson(Map<String, dynamic> json) =>
    RegisteredEvent(
      id: json['id'] as String,
      timestamp: json['timestamp'] as int,
      kind: eventKindNullableFromJson(json['kind']),
      textEvent: json['textEvent'] == null
          ? null
          : TextEvent.fromJson(json['textEvent'] as Map<String, dynamic>),
      stateEvent: json['stateEvent'] == null
          ? null
          : StateEvent.fromJson(json['stateEvent'] as Map<String, dynamic>),
      exceptionEvent: json['exceptionEvent'] == null
          ? null
          : ExceptionEvent.fromJson(
              json['exceptionEvent'] as Map<String, dynamic>),
      networkEvent: json['networkEvent'] == null
          ? null
          : NetworkEvent.fromJson(json['networkEvent'] as Map<String, dynamic>),
      storageEvent: json['storageEvent'] == null
          ? null
          : StorageEvent.fromJson(json['storageEvent'] as Map<String, dynamic>),
      tapEvent: json['tapEvent'] == null
          ? null
          : TapEvent.fromJson(json['tapEvent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisteredEventToJson(RegisteredEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'kind': eventKindNullableToJson(instance.kind),
      'textEvent': instance.textEvent?.toJson(),
      'stateEvent': instance.stateEvent?.toJson(),
      'exceptionEvent': instance.exceptionEvent?.toJson(),
      'networkEvent': instance.networkEvent?.toJson(),
      'storageEvent': instance.storageEvent?.toJson(),
      'tapEvent': instance.tapEvent?.toJson(),
    };

TextEvent _$TextEventFromJson(Map<String, dynamic> json) => TextEvent(
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextEventToJson(TextEvent instance) => <String, dynamic>{
      'text': instance.text,
    };

StateEvent _$StateEventFromJson(Map<String, dynamic> json) => StateEvent(
      stateName: json['stateName'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$StateEventToJson(StateEvent instance) =>
    <String, dynamic>{
      'stateName': instance.stateName,
      'value': instance.value,
    };

ExceptionEvent _$ExceptionEventFromJson(Map<String, dynamic> json) =>
    ExceptionEvent(
      exception: json['exception'] as String,
      traces: (json['traces'] as List<dynamic>?)
              ?.map((e) => TraceEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ExceptionEventToJson(ExceptionEvent instance) =>
    <String, dynamic>{
      'exception': instance.exception,
      'traces': instance.traces.map((e) => e.toJson()).toList(),
    };

TraceEntry _$TraceEntryFromJson(Map<String, dynamic> json) => TraceEntry(
      line: json['line'] as int,
      column: json['column'] as int,
      function: json['function'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$TraceEntryToJson(TraceEntry instance) =>
    <String, dynamic>{
      'line': instance.line,
      'column': instance.column,
      'function': instance.function,
      'path': instance.path,
    };

NetworkEvent _$NetworkEventFromJson(Map<String, dynamic> json) => NetworkEvent(
      url: json['url'] as String,
      statusCode: json['statusCode'] as int,
      requestHeaders: json['requestHeaders'] as Map<String, dynamic>,
      responseHeaders: json['responseHeaders'] as Map<String, dynamic>,
      requestPayload: json['requestPayload'] == null
          ? null
          : NetworkPayload.fromJson(
              json['requestPayload'] as Map<String, dynamic>),
      responsePayload: json['responsePayload'] == null
          ? null
          : NetworkPayload.fromJson(
              json['responsePayload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkEventToJson(NetworkEvent instance) =>
    <String, dynamic>{
      'url': instance.url,
      'statusCode': instance.statusCode,
      'requestHeaders': instance.requestHeaders,
      'responseHeaders': instance.responseHeaders,
      'requestPayload': instance.requestPayload?.toJson(),
      'responsePayload': instance.responsePayload?.toJson(),
    };

NetworkPayload _$NetworkPayloadFromJson(Map<String, dynamic> json) =>
    NetworkPayload(
      kind: networkPayloadKindNullableFromJson(json['kind']),
      formData: json['formData'] as Map<String, dynamic>?,
      json: json['json'] as String?,
      custom: json['custom'] as String?,
    );

Map<String, dynamic> _$NetworkPayloadToJson(NetworkPayload instance) =>
    <String, dynamic>{
      'kind': networkPayloadKindNullableToJson(instance.kind),
      'formData': instance.formData,
      'json': instance.json,
      'custom': instance.custom,
    };

StorageEvent _$StorageEventFromJson(Map<String, dynamic> json) => StorageEvent(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$StorageEventToJson(StorageEvent instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

TapEvent _$TapEventFromJson(Map<String, dynamic> json) => TapEvent(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$TapEventToJson(TapEvent instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
