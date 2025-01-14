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
  Future<Response<PageListOfArtefactDTO>> _apiArtefactsPost(
      {required ArtefactsListRequest? body}) {
    final Uri $url = Uri.parse('/api/artefacts');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PageListOfArtefactDTO, PageListOfArtefactDTO>($request);
  }

  @override
  Future<Response<String>> _apiArtefactsCreatePost({
    String? projectId,
    String? ver,
    String? environment,
    String? flavor,
    String? platform,
    int? build,
    String? artefactExt,
    String? contentType,
    String? contentDisposition,
    List<dynamic>? headers,
    int? length,
    String? name,
    String? fileName,
  }) {
    final Uri $url = Uri.parse('/api/artefacts/create');
    final Map<String, dynamic> $params = <String, dynamic>{
      'projectId': projectId,
      'ver': ver,
      'environment': environment,
      'flavor': flavor,
      'platform': platform,
      'build': build,
      'artefactExt': artefactExt,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValue<String?>(
        'ContentType',
        contentType,
      ),
      PartValue<String?>(
        'ContentDisposition',
        contentDisposition,
      ),
      PartValue<List<dynamic>?>(
        'Headers',
        headers,
      ),
      PartValue<int?>(
        'Length',
        length,
      ),
      PartValue<String?>(
        'Name',
        name,
      ),
      PartValue<String?>(
        'FileName',
        fileName,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

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
  Future<Response<PageListOfDeviceSummary>> _apiDeviceListFilteredPost(
      {required DevicesFilter? body}) {
    final Uri $url = Uri.parse('/api/device/list/filtered');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<PageListOfDeviceSummary, PageListOfDeviceSummary>($request);
  }

  @override
  Future<Response<PageListOfProblem>> _apiProblemsPost(
      {required ProblemsRequest? body}) {
    final Uri $url = Uri.parse('/api/problems');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PageListOfProblem, PageListOfProblem>($request);
  }

  @override
  Future<Response<Problem>> _apiProblemsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/problems/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Problem, Problem>($request);
  }

  @override
  Future<Response<dynamic>> _apiProblemsIdPatch({
    required String? id,
    bool? status,
  }) {
    final Uri $url = Uri.parse('/api/problems/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'status': status};
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ProjectInfo>>> _apiProjectAllGet() {
    final Uri $url = Uri.parse('/api/project/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ProjectInfo>, ProjectInfo>($request);
  }

  @override
  Future<Response<ProjectInfo>> _apiProjectIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/project/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ProjectInfo, ProjectInfo>($request);
  }

  @override
  Future<Response<bool>> _apiProjectInvitePost(
      {required UserInviteRequest? body}) {
    final Uri $url = Uri.parse('/api/project/invite');
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
  Future<Response<PageListOfSessionSummary>> _apiSessionListFilteredPost(
      {required SessionFilter? body}) {
    final Uri $url = Uri.parse('/api/session/list/filtered');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<PageListOfSessionSummary, PageListOfSessionSummary>($request);
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
  Future<Response<List<DeviceInfo>>> _apiLiveListPost(
      {required LiveDevicesListRequest? body}) {
    final Uri $url = Uri.parse('/api/live/list');
    final $body = body;
    final Request $request = Request(
      'POST',
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
