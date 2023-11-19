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
  Future<Response<SuccessAuthResponse>> _apiAuthAuthenticatePost(
      {required AuthenticateRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/authenticate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SuccessAuthResponse, SuccessAuthResponse>($request);
  }

  @override
  Future<Response<bool>> _apiAuthRegisterPost(
      {required RegisterRequest? body}) {
    final Uri $url = Uri.parse('/api/auth/register');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ProjectInfo>>> _apiProjectListGet() {
    final Uri $url = Uri.parse('/api/project/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ProjectInfo>, ProjectInfo>($request);
  }

  @override
  Future<Response<List<ProjectUserSummary>>> _apiProjectUsersPost(
      {required GetProjectUsersRequest? body}) {
    final Uri $url = Uri.parse('/api/project/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ProjectUserSummary>, ProjectUserSummary>($request);
  }

  @override
  Future<Response<ProjectInfo>> _apiProjectCreatePost({required String? body}) {
    final Uri $url = Uri.parse('/api/project/create');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ProjectInfo, ProjectInfo>($request);
  }

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
  Future<Response<List<DeviceInfo>>> _apiLiveListGet(
      {required LiveDevicesListRequest? body}) {
    final Uri $url = Uri.parse('/api/live/list');
    final $body = body;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<DeviceInfo>, DeviceInfo>($request);
  }

  @override
  Future<Response<dynamic>> _apiLiveEventsGet({
    String? deviceID,
    String? projectID,
  }) {
    final Uri $url = Uri.parse('/api/live/events');
    final Map<String, dynamic> $params = <String, dynamic>{
      'deviceID': deviceID,
      'projectID': projectID,
    };
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
