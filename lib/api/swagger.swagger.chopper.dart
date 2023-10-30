// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<String>> _get() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiHealthcheckGet() {
    final Uri $url = Uri.parse('/api/healthcheck');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<DeviceInfo>>> _apiTerminalLivedevicesListGet() {
    final Uri $url = Uri.parse('/api/terminal/livedevices/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<DeviceInfo>, DeviceInfo>($request);
  }

  @override
  Future<Response<dynamic>> _apiTerminalDeviceEventsGet({String? code}) {
    final Uri $url = Uri.parse('/api/terminal/deviceEvents');
    final Map<String, dynamic> $params = <String, dynamic>{'code': code};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<bool>> _apiConsumerConsumePost({required EventsBatch? body}) {
    final Uri $url = Uri.parse('/api/consumer/consume');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<bool, bool>($request);
  }
}
