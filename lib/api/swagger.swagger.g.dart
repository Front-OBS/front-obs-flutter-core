// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessAuthResponse _$SuccessAuthResponseFromJson(Map<String, dynamic> json) =>
    SuccessAuthResponse(
      jwt: json['jwt'] as String,
      profileSummary: json['profileSummary'] == null
          ? null
          : ProfileSummary.fromJson(
              json['profileSummary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuccessAuthResponseToJson(
        SuccessAuthResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'profileSummary': instance.profileSummary?.toJson(),
    };

ProfileSummary _$ProfileSummaryFromJson(Map<String, dynamic> json) =>
    ProfileSummary(
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$ProfileSummaryToJson(ProfileSummary instance) =>
    <String, dynamic>{
      'userName': instance.userName,
    };

AuthenticateRequest _$AuthenticateRequestFromJson(Map<String, dynamic> json) =>
    AuthenticateRequest(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthenticateRequestToJson(
        AuthenticateRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      login: json['login'] as String,
      password: json['password'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'userName': instance.userName,
    };

ProjectInfo _$ProjectInfoFromJson(Map<String, dynamic> json) => ProjectInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      mineRights: (json['mineRights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectInfoToJson(ProjectInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mineRights': instance.mineRights,
    };

ProjectUserSummary _$ProjectUserSummaryFromJson(Map<String, dynamic> json) =>
    ProjectUserSummary(
      userName: json['userName'] as String,
      projectRights: (json['projectRights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectUserSummaryToJson(ProjectUserSummary instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'projectRights': instance.projectRights,
    };

GetProjectUsersRequest _$GetProjectUsersRequestFromJson(
        Map<String, dynamic> json) =>
    GetProjectUsersRequest(
      projectID: json['projectID'] as String?,
    );

Map<String, dynamic> _$GetProjectUsersRequestToJson(
        GetProjectUsersRequest instance) =>
    <String, dynamic>{
      'projectID': instance.projectID,
    };

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      code: json['code'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'parameters': instance.parameters,
    };

LiveDevicesListRequest _$LiveDevicesListRequestFromJson(
        Map<String, dynamic> json) =>
    LiveDevicesListRequest(
      projectID: json['projectID'] as String,
    );

Map<String, dynamic> _$LiveDevicesListRequestToJson(
        LiveDevicesListRequest instance) =>
    <String, dynamic>{
      'projectID': instance.projectID,
    };

EventsBatch _$EventsBatchFromJson(Map<String, dynamic> json) => EventsBatch(
      isLive: json['isLive'] as bool,
      deviceInfo: json['deviceInfo'] as Map<String, dynamic>,
      identification: json['identification'] == null
          ? null
          : Identification.fromJson(
              json['identification'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => RegisteredEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      projectID: json['projectID'] as String,
    );

Map<String, dynamic> _$EventsBatchToJson(EventsBatch instance) =>
    <String, dynamic>{
      'isLive': instance.isLive,
      'deviceInfo': instance.deviceInfo,
      'identification': instance.identification?.toJson(),
      'events': instance.events.map((e) => e.toJson()).toList(),
      'projectID': instance.projectID,
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
