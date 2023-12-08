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
