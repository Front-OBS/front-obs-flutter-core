// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Swagger(newClient);
  }

  ///
  Future<chopper.Response<PageListOfArtefactDTO?>> apiArtefactsPost(
      {required ArtefactsListRequest? body}) {
    generatedMapping.putIfAbsent(
        PageListOfArtefactDTO, () => PageListOfArtefactDTO.fromJsonFactory);

    return _apiArtefactsPost(body: body);
  }

  ///
  @Post(
    path: '/api/artefacts',
    optionalBody: true,
  )
  Future<chopper.Response<PageListOfArtefactDTO?>> _apiArtefactsPost(
      {@Body() required ArtefactsListRequest? body});

  ///
  ///@param projectId
  ///@param ver
  ///@param environment
  ///@param flavor
  ///@param platform
  ///@param build
  ///@param artefactExt
  Future<chopper.Response<String>> apiArtefactsCreatePost({
    String? projectId,
    String? ver,
    String? environment,
    String? flavor,
    String? platform,
    int? build,
    String? artefactExt,
    String? contentType,
    String? contentDisposition,
    List? headers,
    int? length,
    String? name,
    String? fileName,
  }) {
    return _apiArtefactsCreatePost(
        projectId: projectId,
        ver: ver,
        environment: environment,
        flavor: flavor,
        platform: platform,
        build: build,
        artefactExt: artefactExt,
        contentType: contentType,
        contentDisposition: contentDisposition,
        headers: headers,
        length: length,
        name: name,
        fileName: fileName);
  }

  ///
  ///@param projectId
  ///@param ver
  ///@param environment
  ///@param flavor
  ///@param platform
  ///@param build
  ///@param artefactExt
  @Post(
    path: '/api/artefacts/create',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<String>> _apiArtefactsCreatePost({
    @Query('projectId') String? projectId,
    @Query('ver') String? ver,
    @Query('environment') String? environment,
    @Query('flavor') String? flavor,
    @Query('platform') String? platform,
    @Query('build') int? build,
    @Query('artefactExt') String? artefactExt,
    @Part('ContentType') String? contentType,
    @Part('ContentDisposition') String? contentDisposition,
    @Part('Headers') List? headers,
    @Part('Length') int? length,
    @Part('Name') String? name,
    @Part('FileName') String? fileName,
  });

  ///
  Future<chopper.Response<SuccessAuthResponse?>> apiAuthAuthenticatePost(
      {required AuthenticateRequest? body}) {
    generatedMapping.putIfAbsent(
        SuccessAuthResponse, () => SuccessAuthResponse.fromJsonFactory);

    return _apiAuthAuthenticatePost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/authenticate',
    optionalBody: true,
  )
  Future<chopper.Response<SuccessAuthResponse?>> _apiAuthAuthenticatePost(
      {@Body() required AuthenticateRequest? body});

  ///
  Future<chopper.Response<bool>> apiAuthRegisterPost(
      {required RegisterRequest? body}) {
    return _apiAuthRegisterPost(body: body);
  }

  ///
  @Post(
    path: '/api/auth/register',
    optionalBody: true,
  )
  Future<chopper.Response<bool>> _apiAuthRegisterPost(
      {@Body() required RegisterRequest? body});

  ///
  Future<chopper.Response<PageListOfDeviceSummary?>> apiDeviceListFilteredPost(
      {required DevicesFilter? body}) {
    generatedMapping.putIfAbsent(
        PageListOfDeviceSummary, () => PageListOfDeviceSummary.fromJsonFactory);

    return _apiDeviceListFilteredPost(body: body);
  }

  ///
  @Post(
    path: '/api/device/list/filtered',
    optionalBody: true,
  )
  Future<chopper.Response<PageListOfDeviceSummary?>> _apiDeviceListFilteredPost(
      {@Body() required DevicesFilter? body});

  ///
  Future<chopper.Response<PageListOfProblem?>> apiProblemsPost(
      {required ProblemsRequest? body}) {
    generatedMapping.putIfAbsent(
        PageListOfProblem, () => PageListOfProblem.fromJsonFactory);

    return _apiProblemsPost(body: body);
  }

  ///
  @Post(
    path: '/api/problems',
    optionalBody: true,
  )
  Future<chopper.Response<PageListOfProblem?>> _apiProblemsPost(
      {@Body() required ProblemsRequest? body});

  ///
  ///@param id
  Future<chopper.Response<Problem?>> apiProblemsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(Problem, () => Problem.fromJsonFactory);

    return _apiProblemsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/problems/{id}')
  Future<chopper.Response<Problem?>> _apiProblemsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param status
  Future<chopper.Response> apiProblemsIdPatch({
    required String? id,
    bool? status,
  }) {
    return _apiProblemsIdPatch(id: id, status: status);
  }

  ///
  ///@param id
  ///@param status
  @Patch(
    path: '/api/problems/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiProblemsIdPatch({
    @Path('id') required String? id,
    @Query('status') bool? status,
  });

  ///
  Future<chopper.Response<List<ProjectInfo>>> apiProjectAllGet() {
    generatedMapping.putIfAbsent(
        ProjectInfo, () => ProjectInfo.fromJsonFactory);

    return _apiProjectAllGet();
  }

  ///
  @Get(path: '/api/project/all')
  Future<chopper.Response<List<ProjectInfo>>> _apiProjectAllGet();

  ///
  ///@param id
  Future<chopper.Response<ProjectInfo?>> apiProjectIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ProjectInfo, () => ProjectInfo.fromJsonFactory);

    return _apiProjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/project/{id}')
  Future<chopper.Response<ProjectInfo?>> _apiProjectIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<bool>> apiProjectInvitePost(
      {required UserInviteRequest? body}) {
    return _apiProjectInvitePost(body: body);
  }

  ///
  @Post(
    path: '/api/project/invite',
    optionalBody: true,
  )
  Future<chopper.Response<bool>> _apiProjectInvitePost(
      {@Body() required UserInviteRequest? body});

  ///
  Future<chopper.Response<List<ProjectUserSummary>>> apiProjectUsersPost(
      {required GetProjectUsersRequest? body}) {
    generatedMapping.putIfAbsent(
        ProjectUserSummary, () => ProjectUserSummary.fromJsonFactory);

    return _apiProjectUsersPost(body: body);
  }

  ///
  @Post(
    path: '/api/project/users',
    optionalBody: true,
  )
  Future<chopper.Response<List<ProjectUserSummary>>> _apiProjectUsersPost(
      {@Body() required GetProjectUsersRequest? body});

  ///
  Future<chopper.Response<ProjectInfo?>> apiProjectCreatePost(
      {required String? body}) {
    generatedMapping.putIfAbsent(
        ProjectInfo, () => ProjectInfo.fromJsonFactory);

    return _apiProjectCreatePost(body: body);
  }

  ///
  @Post(
    path: '/api/project/create',
    optionalBody: true,
  )
  Future<chopper.Response<ProjectInfo?>> _apiProjectCreatePost(
      {@Body() required String? body});

  ///
  Future<chopper.Response<PageListOfSessionSummary?>>
      apiSessionListFilteredPost({required SessionFilter? body}) {
    generatedMapping.putIfAbsent(PageListOfSessionSummary,
        () => PageListOfSessionSummary.fromJsonFactory);

    return _apiSessionListFilteredPost(body: body);
  }

  ///
  @Post(
    path: '/api/session/list/filtered',
    optionalBody: true,
  )
  Future<chopper.Response<PageListOfSessionSummary?>>
      _apiSessionListFilteredPost({@Body() required SessionFilter? body});

  ///
  Future<chopper.Response<String>> get() {
    return _get();
  }

  ///
  @Get(path: '/')
  Future<chopper.Response<String>> _get();

  ///
  Future<chopper.Response<String>> apiHealthcheckGet() {
    return _apiHealthcheckGet();
  }

  ///
  @Get(path: '/api/healthcheck')
  Future<chopper.Response<String>> _apiHealthcheckGet();

  ///
  Future<chopper.Response<List<DeviceInfo>>> apiLiveListPost(
      {required LiveDevicesListRequest? body}) {
    generatedMapping.putIfAbsent(DeviceInfo, () => DeviceInfo.fromJsonFactory);

    return _apiLiveListPost(body: body);
  }

  ///
  @Post(
    path: '/api/live/list',
    optionalBody: true,
  )
  Future<chopper.Response<List<DeviceInfo>>> _apiLiveListPost(
      {@Body() required LiveDevicesListRequest? body});

  ///
  ///@param deviceID
  ///@param projectID
  Future<chopper.Response> apiLiveEventsGet({
    String? deviceID,
    String? projectID,
  }) {
    return _apiLiveEventsGet(deviceID: deviceID, projectID: projectID);
  }

  ///
  ///@param deviceID
  ///@param projectID
  @Get(path: '/api/live/events')
  Future<chopper.Response> _apiLiveEventsGet({
    @Query('deviceID') String? deviceID,
    @Query('projectID') String? projectID,
  });

  ///
  Future<chopper.Response<bool>> apiConsumerConsumePost(
      {required EventsBatch? body}) {
    return _apiConsumerConsumePost(body: body);
  }

  ///
  @Post(
    path: '/api/consumer/consume',
    optionalBody: true,
  )
  Future<chopper.Response<bool>> _apiConsumerConsumePost(
      {@Body() required EventsBatch? body});
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  const ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }

  ProblemDetails copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? title,
      Wrapped<int?>? status,
      Wrapped<String?>? detail,
      Wrapped<String?>? instance}) {
    return ProblemDetails(
        type: (type != null ? type.value : this.type),
        title: (title != null ? title.value : this.title),
        status: (status != null ? status.value : this.status),
        detail: (detail != null ? detail.value : this.detail),
        instance: (instance != null ? instance.value : this.instance));
  }
}

@JsonSerializable(explicitToJson: true)
class PageListOfArtefactDTO {
  const PageListOfArtefactDTO({
    required this.items,
    required this.pagination,
  });

  factory PageListOfArtefactDTO.fromJson(Map<String, dynamic> json) =>
      _$PageListOfArtefactDTOFromJson(json);

  static const toJsonFactory = _$PageListOfArtefactDTOToJson;
  Map<String, dynamic> toJson() => _$PageListOfArtefactDTOToJson(this);

  @JsonKey(name: 'items', defaultValue: <ArtefactDTO>[])
  final List<ArtefactDTO> items;
  @JsonKey(name: 'pagination')
  final PaginationInfo? pagination;
  static const fromJsonFactory = _$PageListOfArtefactDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfArtefactDTO &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pagination) ^
      runtimeType.hashCode;
}

extension $PageListOfArtefactDTOExtension on PageListOfArtefactDTO {
  PageListOfArtefactDTO copyWith(
      {List<ArtefactDTO>? items, PaginationInfo? pagination}) {
    return PageListOfArtefactDTO(
        items: items ?? this.items, pagination: pagination ?? this.pagination);
  }

  PageListOfArtefactDTO copyWithWrapped(
      {Wrapped<List<ArtefactDTO>>? items,
      Wrapped<PaginationInfo?>? pagination}) {
    return PageListOfArtefactDTO(
        items: (items != null ? items.value : this.items),
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class ArtefactDTO {
  const ArtefactDTO({
    required this.id,
    this.downloadLink,
    this.artefactExt,
    required this.environment,
    required this.platform,
    required this.flavor,
    required this.version,
    required this.build,
    required this.publication,
  });

  factory ArtefactDTO.fromJson(Map<String, dynamic> json) =>
      _$ArtefactDTOFromJson(json);

  static const toJsonFactory = _$ArtefactDTOToJson;
  Map<String, dynamic> toJson() => _$ArtefactDTOToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'downloadLink')
  final String? downloadLink;
  @JsonKey(name: 'artefactExt')
  final String? artefactExt;
  @JsonKey(name: 'environment')
  final String environment;
  @JsonKey(name: 'platform')
  final String platform;
  @JsonKey(name: 'flavor')
  final String flavor;
  @JsonKey(name: 'version')
  final String version;
  @JsonKey(name: 'build')
  final int build;
  @JsonKey(name: 'publication')
  final DateTime publication;
  static const fromJsonFactory = _$ArtefactDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArtefactDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.downloadLink, downloadLink) ||
                const DeepCollectionEquality()
                    .equals(other.downloadLink, downloadLink)) &&
            (identical(other.artefactExt, artefactExt) ||
                const DeepCollectionEquality()
                    .equals(other.artefactExt, artefactExt)) &&
            (identical(other.environment, environment) ||
                const DeepCollectionEquality()
                    .equals(other.environment, environment)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.flavor, flavor) ||
                const DeepCollectionEquality().equals(other.flavor, flavor)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.build, build) ||
                const DeepCollectionEquality().equals(other.build, build)) &&
            (identical(other.publication, publication) ||
                const DeepCollectionEquality()
                    .equals(other.publication, publication)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(downloadLink) ^
      const DeepCollectionEquality().hash(artefactExt) ^
      const DeepCollectionEquality().hash(environment) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(flavor) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(build) ^
      const DeepCollectionEquality().hash(publication) ^
      runtimeType.hashCode;
}

extension $ArtefactDTOExtension on ArtefactDTO {
  ArtefactDTO copyWith(
      {String? id,
      String? downloadLink,
      String? artefactExt,
      String? environment,
      String? platform,
      String? flavor,
      String? version,
      int? build,
      DateTime? publication}) {
    return ArtefactDTO(
        id: id ?? this.id,
        downloadLink: downloadLink ?? this.downloadLink,
        artefactExt: artefactExt ?? this.artefactExt,
        environment: environment ?? this.environment,
        platform: platform ?? this.platform,
        flavor: flavor ?? this.flavor,
        version: version ?? this.version,
        build: build ?? this.build,
        publication: publication ?? this.publication);
  }

  ArtefactDTO copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? downloadLink,
      Wrapped<String?>? artefactExt,
      Wrapped<String>? environment,
      Wrapped<String>? platform,
      Wrapped<String>? flavor,
      Wrapped<String>? version,
      Wrapped<int>? build,
      Wrapped<DateTime>? publication}) {
    return ArtefactDTO(
        id: (id != null ? id.value : this.id),
        downloadLink:
            (downloadLink != null ? downloadLink.value : this.downloadLink),
        artefactExt:
            (artefactExt != null ? artefactExt.value : this.artefactExt),
        environment:
            (environment != null ? environment.value : this.environment),
        platform: (platform != null ? platform.value : this.platform),
        flavor: (flavor != null ? flavor.value : this.flavor),
        version: (version != null ? version.value : this.version),
        build: (build != null ? build.value : this.build),
        publication:
            (publication != null ? publication.value : this.publication));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginationInfo {
  const PaginationInfo({
    required this.totalPages,
    required this.totalItems,
    required this.page,
  });

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);

  static const toJsonFactory = _$PaginationInfoToJson;
  Map<String, dynamic> toJson() => _$PaginationInfoToJson(this);

  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'totalItems')
  final int totalItems;
  @JsonKey(name: 'page')
  final int page;
  static const fromJsonFactory = _$PaginationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginationInfo &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalItems, totalItems) ||
                const DeepCollectionEquality()
                    .equals(other.totalItems, totalItems)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalItems) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PaginationInfoExtension on PaginationInfo {
  PaginationInfo copyWith({int? totalPages, int? totalItems, int? page}) {
    return PaginationInfo(
        totalPages: totalPages ?? this.totalPages,
        totalItems: totalItems ?? this.totalItems,
        page: page ?? this.page);
  }

  PaginationInfo copyWithWrapped(
      {Wrapped<int>? totalPages,
      Wrapped<int>? totalItems,
      Wrapped<int>? page}) {
    return PaginationInfo(
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalItems: (totalItems != null ? totalItems.value : this.totalItems),
        page: (page != null ? page.value : this.page));
  }
}

@JsonSerializable(explicitToJson: true)
class ArtefactsListRequest {
  const ArtefactsListRequest({
    this.projectId,
    this.page,
    this.pageSize,
  });

  factory ArtefactsListRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtefactsListRequestFromJson(json);

  static const toJsonFactory = _$ArtefactsListRequestToJson;
  Map<String, dynamic> toJson() => _$ArtefactsListRequestToJson(this);

  @JsonKey(name: 'projectId')
  final String? projectId;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  static const fromJsonFactory = _$ArtefactsListRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArtefactsListRequest &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      runtimeType.hashCode;
}

extension $ArtefactsListRequestExtension on ArtefactsListRequest {
  ArtefactsListRequest copyWith({String? projectId, int? page, int? pageSize}) {
    return ArtefactsListRequest(
        projectId: projectId ?? this.projectId,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize);
  }

  ArtefactsListRequest copyWithWrapped(
      {Wrapped<String?>? projectId,
      Wrapped<int?>? page,
      Wrapped<int?>? pageSize}) {
    return ArtefactsListRequest(
        projectId: (projectId != null ? projectId.value : this.projectId),
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize));
  }
}

@JsonSerializable(explicitToJson: true)
class SuccessAuthResponse {
  const SuccessAuthResponse({
    required this.jwt,
    required this.profileSummary,
  });

  factory SuccessAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessAuthResponseFromJson(json);

  static const toJsonFactory = _$SuccessAuthResponseToJson;
  Map<String, dynamic> toJson() => _$SuccessAuthResponseToJson(this);

  @JsonKey(name: 'jwt')
  final String jwt;
  @JsonKey(name: 'profileSummary')
  final ProfileSummary? profileSummary;
  static const fromJsonFactory = _$SuccessAuthResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessAuthResponse &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)) &&
            (identical(other.profileSummary, profileSummary) ||
                const DeepCollectionEquality()
                    .equals(other.profileSummary, profileSummary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jwt) ^
      const DeepCollectionEquality().hash(profileSummary) ^
      runtimeType.hashCode;
}

extension $SuccessAuthResponseExtension on SuccessAuthResponse {
  SuccessAuthResponse copyWith({String? jwt, ProfileSummary? profileSummary}) {
    return SuccessAuthResponse(
        jwt: jwt ?? this.jwt,
        profileSummary: profileSummary ?? this.profileSummary);
  }

  SuccessAuthResponse copyWithWrapped(
      {Wrapped<String>? jwt, Wrapped<ProfileSummary?>? profileSummary}) {
    return SuccessAuthResponse(
        jwt: (jwt != null ? jwt.value : this.jwt),
        profileSummary: (profileSummary != null
            ? profileSummary.value
            : this.profileSummary));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileSummary {
  const ProfileSummary({
    required this.userName,
  });

  factory ProfileSummary.fromJson(Map<String, dynamic> json) =>
      _$ProfileSummaryFromJson(json);

  static const toJsonFactory = _$ProfileSummaryToJson;
  Map<String, dynamic> toJson() => _$ProfileSummaryToJson(this);

  @JsonKey(name: 'userName')
  final String userName;
  static const fromJsonFactory = _$ProfileSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileSummary &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^ runtimeType.hashCode;
}

extension $ProfileSummaryExtension on ProfileSummary {
  ProfileSummary copyWith({String? userName}) {
    return ProfileSummary(userName: userName ?? this.userName);
  }

  ProfileSummary copyWithWrapped({Wrapped<String>? userName}) {
    return ProfileSummary(
        userName: (userName != null ? userName.value : this.userName));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthenticateRequest {
  const AuthenticateRequest({
    required this.login,
    required this.password,
  });

  factory AuthenticateRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateRequestFromJson(json);

  static const toJsonFactory = _$AuthenticateRequestToJson;
  Map<String, dynamic> toJson() => _$AuthenticateRequestToJson(this);

  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$AuthenticateRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticateRequest &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthenticateRequestExtension on AuthenticateRequest {
  AuthenticateRequest copyWith({String? login, String? password}) {
    return AuthenticateRequest(
        login: login ?? this.login, password: password ?? this.password);
  }

  AuthenticateRequest copyWithWrapped(
      {Wrapped<String>? login, Wrapped<String>? password}) {
    return AuthenticateRequest(
        login: (login != null ? login.value : this.login),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class RegisterRequest {
  const RegisterRequest({
    required this.login,
    required this.password,
    required this.userName,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  static const toJsonFactory = _$RegisterRequestToJson;
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);

  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'userName')
  final String userName;
  static const fromJsonFactory = _$RegisterRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterRequest &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userName) ^
      runtimeType.hashCode;
}

extension $RegisterRequestExtension on RegisterRequest {
  RegisterRequest copyWith(
      {String? login, String? password, String? userName}) {
    return RegisterRequest(
        login: login ?? this.login,
        password: password ?? this.password,
        userName: userName ?? this.userName);
  }

  RegisterRequest copyWithWrapped(
      {Wrapped<String>? login,
      Wrapped<String>? password,
      Wrapped<String>? userName}) {
    return RegisterRequest(
        login: (login != null ? login.value : this.login),
        password: (password != null ? password.value : this.password),
        userName: (userName != null ? userName.value : this.userName));
  }
}

@JsonSerializable(explicitToJson: true)
class PageListOfDeviceSummary {
  const PageListOfDeviceSummary({
    required this.items,
    required this.pagination,
  });

  factory PageListOfDeviceSummary.fromJson(Map<String, dynamic> json) =>
      _$PageListOfDeviceSummaryFromJson(json);

  static const toJsonFactory = _$PageListOfDeviceSummaryToJson;
  Map<String, dynamic> toJson() => _$PageListOfDeviceSummaryToJson(this);

  @JsonKey(name: 'items', defaultValue: <DeviceSummary>[])
  final List<DeviceSummary> items;
  @JsonKey(name: 'pagination')
  final PaginationInfo? pagination;
  static const fromJsonFactory = _$PageListOfDeviceSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfDeviceSummary &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pagination) ^
      runtimeType.hashCode;
}

extension $PageListOfDeviceSummaryExtension on PageListOfDeviceSummary {
  PageListOfDeviceSummary copyWith(
      {List<DeviceSummary>? items, PaginationInfo? pagination}) {
    return PageListOfDeviceSummary(
        items: items ?? this.items, pagination: pagination ?? this.pagination);
  }

  PageListOfDeviceSummary copyWithWrapped(
      {Wrapped<List<DeviceSummary>>? items,
      Wrapped<PaginationInfo?>? pagination}) {
    return PageListOfDeviceSummary(
        items: (items != null ? items.value : this.items),
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceSummary {
  const DeviceSummary({
    required this.deviceCode,
    required this.sessionsCount,
    required this.associatedAccountsCount,
    required this.exceptionsCount,
  });

  factory DeviceSummary.fromJson(Map<String, dynamic> json) =>
      _$DeviceSummaryFromJson(json);

  static const toJsonFactory = _$DeviceSummaryToJson;
  Map<String, dynamic> toJson() => _$DeviceSummaryToJson(this);

  @JsonKey(name: 'deviceCode')
  final String deviceCode;
  @JsonKey(name: 'sessionsCount')
  final int sessionsCount;
  @JsonKey(name: 'associatedAccountsCount')
  final int associatedAccountsCount;
  @JsonKey(name: 'exceptionsCount')
  final int exceptionsCount;
  static const fromJsonFactory = _$DeviceSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceSummary &&
            (identical(other.deviceCode, deviceCode) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCode, deviceCode)) &&
            (identical(other.sessionsCount, sessionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.sessionsCount, sessionsCount)) &&
            (identical(
                    other.associatedAccountsCount, associatedAccountsCount) ||
                const DeepCollectionEquality().equals(
                    other.associatedAccountsCount, associatedAccountsCount)) &&
            (identical(other.exceptionsCount, exceptionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.exceptionsCount, exceptionsCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceCode) ^
      const DeepCollectionEquality().hash(sessionsCount) ^
      const DeepCollectionEquality().hash(associatedAccountsCount) ^
      const DeepCollectionEquality().hash(exceptionsCount) ^
      runtimeType.hashCode;
}

extension $DeviceSummaryExtension on DeviceSummary {
  DeviceSummary copyWith(
      {String? deviceCode,
      int? sessionsCount,
      int? associatedAccountsCount,
      int? exceptionsCount}) {
    return DeviceSummary(
        deviceCode: deviceCode ?? this.deviceCode,
        sessionsCount: sessionsCount ?? this.sessionsCount,
        associatedAccountsCount:
            associatedAccountsCount ?? this.associatedAccountsCount,
        exceptionsCount: exceptionsCount ?? this.exceptionsCount);
  }

  DeviceSummary copyWithWrapped(
      {Wrapped<String>? deviceCode,
      Wrapped<int>? sessionsCount,
      Wrapped<int>? associatedAccountsCount,
      Wrapped<int>? exceptionsCount}) {
    return DeviceSummary(
        deviceCode: (deviceCode != null ? deviceCode.value : this.deviceCode),
        sessionsCount:
            (sessionsCount != null ? sessionsCount.value : this.sessionsCount),
        associatedAccountsCount: (associatedAccountsCount != null
            ? associatedAccountsCount.value
            : this.associatedAccountsCount),
        exceptionsCount: (exceptionsCount != null
            ? exceptionsCount.value
            : this.exceptionsCount));
  }
}

@JsonSerializable(explicitToJson: true)
class DevicesFilter {
  const DevicesFilter({
    this.projectID,
    this.page,
    this.pageSize,
    this.deviceId,
    this.associatedAccountPhone,
    this.associatedAccountEmail,
  });

  factory DevicesFilter.fromJson(Map<String, dynamic> json) =>
      _$DevicesFilterFromJson(json);

  static const toJsonFactory = _$DevicesFilterToJson;
  Map<String, dynamic> toJson() => _$DevicesFilterToJson(this);

  @JsonKey(name: 'projectID')
  final String? projectID;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @JsonKey(name: 'associatedAccountPhone')
  final String? associatedAccountPhone;
  @JsonKey(name: 'associatedAccountEmail')
  final String? associatedAccountEmail;
  static const fromJsonFactory = _$DevicesFilterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DevicesFilter &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.associatedAccountPhone, associatedAccountPhone) ||
                const DeepCollectionEquality().equals(
                    other.associatedAccountPhone, associatedAccountPhone)) &&
            (identical(other.associatedAccountEmail, associatedAccountEmail) ||
                const DeepCollectionEquality().equals(
                    other.associatedAccountEmail, associatedAccountEmail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectID) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(associatedAccountPhone) ^
      const DeepCollectionEquality().hash(associatedAccountEmail) ^
      runtimeType.hashCode;
}

extension $DevicesFilterExtension on DevicesFilter {
  DevicesFilter copyWith(
      {String? projectID,
      int? page,
      int? pageSize,
      String? deviceId,
      String? associatedAccountPhone,
      String? associatedAccountEmail}) {
    return DevicesFilter(
        projectID: projectID ?? this.projectID,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        deviceId: deviceId ?? this.deviceId,
        associatedAccountPhone:
            associatedAccountPhone ?? this.associatedAccountPhone,
        associatedAccountEmail:
            associatedAccountEmail ?? this.associatedAccountEmail);
  }

  DevicesFilter copyWithWrapped(
      {Wrapped<String?>? projectID,
      Wrapped<int?>? page,
      Wrapped<int?>? pageSize,
      Wrapped<String?>? deviceId,
      Wrapped<String?>? associatedAccountPhone,
      Wrapped<String?>? associatedAccountEmail}) {
    return DevicesFilter(
        projectID: (projectID != null ? projectID.value : this.projectID),
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        associatedAccountPhone: (associatedAccountPhone != null
            ? associatedAccountPhone.value
            : this.associatedAccountPhone),
        associatedAccountEmail: (associatedAccountEmail != null
            ? associatedAccountEmail.value
            : this.associatedAccountEmail));
  }
}

@JsonSerializable(explicitToJson: true)
class PageListOfProblem {
  const PageListOfProblem({
    required this.items,
    required this.pagination,
  });

  factory PageListOfProblem.fromJson(Map<String, dynamic> json) =>
      _$PageListOfProblemFromJson(json);

  static const toJsonFactory = _$PageListOfProblemToJson;
  Map<String, dynamic> toJson() => _$PageListOfProblemToJson(this);

  @JsonKey(name: 'items', defaultValue: <Problem>[])
  final List<Problem> items;
  @JsonKey(name: 'pagination')
  final PaginationInfo? pagination;
  static const fromJsonFactory = _$PageListOfProblemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfProblem &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pagination) ^
      runtimeType.hashCode;
}

extension $PageListOfProblemExtension on PageListOfProblem {
  PageListOfProblem copyWith(
      {List<Problem>? items, PaginationInfo? pagination}) {
    return PageListOfProblem(
        items: items ?? this.items, pagination: pagination ?? this.pagination);
  }

  PageListOfProblem copyWithWrapped(
      {Wrapped<List<Problem>>? items, Wrapped<PaginationInfo?>? pagination}) {
    return PageListOfProblem(
        items: (items != null ? items.value : this.items),
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class Problem {
  const Problem({
    required this.id,
    required this.error,
    required this.isSolved,
    required this.lastOccurance,
    required this.totalOccurances,
    required this.affectedDevices,
    required this.traces,
  });

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);

  static const toJsonFactory = _$ProblemToJson;
  Map<String, dynamic> toJson() => _$ProblemToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'error')
  final String error;
  @JsonKey(name: 'isSolved')
  final bool isSolved;
  @JsonKey(name: 'lastOccurance')
  final DateTime lastOccurance;
  @JsonKey(name: 'totalOccurances')
  final int totalOccurances;
  @JsonKey(name: 'affectedDevices')
  final int affectedDevices;
  @JsonKey(name: 'traces', defaultValue: <TraceEntry>[])
  final List<TraceEntry> traces;
  static const fromJsonFactory = _$ProblemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Problem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isSolved, isSolved) ||
                const DeepCollectionEquality()
                    .equals(other.isSolved, isSolved)) &&
            (identical(other.lastOccurance, lastOccurance) ||
                const DeepCollectionEquality()
                    .equals(other.lastOccurance, lastOccurance)) &&
            (identical(other.totalOccurances, totalOccurances) ||
                const DeepCollectionEquality()
                    .equals(other.totalOccurances, totalOccurances)) &&
            (identical(other.affectedDevices, affectedDevices) ||
                const DeepCollectionEquality()
                    .equals(other.affectedDevices, affectedDevices)) &&
            (identical(other.traces, traces) ||
                const DeepCollectionEquality().equals(other.traces, traces)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isSolved) ^
      const DeepCollectionEquality().hash(lastOccurance) ^
      const DeepCollectionEquality().hash(totalOccurances) ^
      const DeepCollectionEquality().hash(affectedDevices) ^
      const DeepCollectionEquality().hash(traces) ^
      runtimeType.hashCode;
}

extension $ProblemExtension on Problem {
  Problem copyWith(
      {String? id,
      String? error,
      bool? isSolved,
      DateTime? lastOccurance,
      int? totalOccurances,
      int? affectedDevices,
      List<TraceEntry>? traces}) {
    return Problem(
        id: id ?? this.id,
        error: error ?? this.error,
        isSolved: isSolved ?? this.isSolved,
        lastOccurance: lastOccurance ?? this.lastOccurance,
        totalOccurances: totalOccurances ?? this.totalOccurances,
        affectedDevices: affectedDevices ?? this.affectedDevices,
        traces: traces ?? this.traces);
  }

  Problem copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? error,
      Wrapped<bool>? isSolved,
      Wrapped<DateTime>? lastOccurance,
      Wrapped<int>? totalOccurances,
      Wrapped<int>? affectedDevices,
      Wrapped<List<TraceEntry>>? traces}) {
    return Problem(
        id: (id != null ? id.value : this.id),
        error: (error != null ? error.value : this.error),
        isSolved: (isSolved != null ? isSolved.value : this.isSolved),
        lastOccurance:
            (lastOccurance != null ? lastOccurance.value : this.lastOccurance),
        totalOccurances: (totalOccurances != null
            ? totalOccurances.value
            : this.totalOccurances),
        affectedDevices: (affectedDevices != null
            ? affectedDevices.value
            : this.affectedDevices),
        traces: (traces != null ? traces.value : this.traces));
  }
}

@JsonSerializable(explicitToJson: true)
class TraceEntry {
  const TraceEntry({
    required this.line,
    required this.column,
    required this.function,
    required this.path,
  });

  factory TraceEntry.fromJson(Map<String, dynamic> json) =>
      _$TraceEntryFromJson(json);

  static const toJsonFactory = _$TraceEntryToJson;
  Map<String, dynamic> toJson() => _$TraceEntryToJson(this);

  @JsonKey(name: 'line')
  final int line;
  @JsonKey(name: 'column')
  final int column;
  @JsonKey(name: 'function')
  final String function;
  @JsonKey(name: 'path')
  final String path;
  static const fromJsonFactory = _$TraceEntryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TraceEntry &&
            (identical(other.line, line) ||
                const DeepCollectionEquality().equals(other.line, line)) &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.function, function) ||
                const DeepCollectionEquality()
                    .equals(other.function, function)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(line) ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(function) ^
      const DeepCollectionEquality().hash(path) ^
      runtimeType.hashCode;
}

extension $TraceEntryExtension on TraceEntry {
  TraceEntry copyWith(
      {int? line, int? column, String? function, String? path}) {
    return TraceEntry(
        line: line ?? this.line,
        column: column ?? this.column,
        function: function ?? this.function,
        path: path ?? this.path);
  }

  TraceEntry copyWithWrapped(
      {Wrapped<int>? line,
      Wrapped<int>? column,
      Wrapped<String>? function,
      Wrapped<String>? path}) {
    return TraceEntry(
        line: (line != null ? line.value : this.line),
        column: (column != null ? column.value : this.column),
        function: (function != null ? function.value : this.function),
        path: (path != null ? path.value : this.path));
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemsRequest {
  const ProblemsRequest({
    this.page,
    this.pageSize,
    this.projectId,
    this.isSolved,
  });

  factory ProblemsRequest.fromJson(Map<String, dynamic> json) =>
      _$ProblemsRequestFromJson(json);

  static const toJsonFactory = _$ProblemsRequestToJson;
  Map<String, dynamic> toJson() => _$ProblemsRequestToJson(this);

  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'projectId')
  final String? projectId;
  @JsonKey(name: 'isSolved')
  final bool? isSolved;
  static const fromJsonFactory = _$ProblemsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemsRequest &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.isSolved, isSolved) ||
                const DeepCollectionEquality()
                    .equals(other.isSolved, isSolved)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(isSolved) ^
      runtimeType.hashCode;
}

extension $ProblemsRequestExtension on ProblemsRequest {
  ProblemsRequest copyWith(
      {int? page, int? pageSize, String? projectId, bool? isSolved}) {
    return ProblemsRequest(
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        projectId: projectId ?? this.projectId,
        isSolved: isSolved ?? this.isSolved);
  }

  ProblemsRequest copyWithWrapped(
      {Wrapped<int?>? page,
      Wrapped<int?>? pageSize,
      Wrapped<String?>? projectId,
      Wrapped<bool?>? isSolved}) {
    return ProblemsRequest(
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize),
        projectId: (projectId != null ? projectId.value : this.projectId),
        isSolved: (isSolved != null ? isSolved.value : this.isSolved));
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectInfo {
  const ProjectInfo({
    required this.id,
    required this.name,
    required this.mineRights,
  });

  factory ProjectInfo.fromJson(Map<String, dynamic> json) =>
      _$ProjectInfoFromJson(json);

  static const toJsonFactory = _$ProjectInfoToJson;
  Map<String, dynamic> toJson() => _$ProjectInfoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'mineRights', defaultValue: <String>[])
  final List<String> mineRights;
  static const fromJsonFactory = _$ProjectInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mineRights, mineRights) ||
                const DeepCollectionEquality()
                    .equals(other.mineRights, mineRights)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mineRights) ^
      runtimeType.hashCode;
}

extension $ProjectInfoExtension on ProjectInfo {
  ProjectInfo copyWith({String? id, String? name, List<String>? mineRights}) {
    return ProjectInfo(
        id: id ?? this.id,
        name: name ?? this.name,
        mineRights: mineRights ?? this.mineRights);
  }

  ProjectInfo copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<List<String>>? mineRights}) {
    return ProjectInfo(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        mineRights: (mineRights != null ? mineRights.value : this.mineRights));
  }
}

@JsonSerializable(explicitToJson: true)
class UserInviteRequest {
  const UserInviteRequest({
    this.projectID,
    this.userEmail,
  });

  factory UserInviteRequest.fromJson(Map<String, dynamic> json) =>
      _$UserInviteRequestFromJson(json);

  static const toJsonFactory = _$UserInviteRequestToJson;
  Map<String, dynamic> toJson() => _$UserInviteRequestToJson(this);

  @JsonKey(name: 'projectID')
  final String? projectID;
  @JsonKey(name: 'userEmail')
  final String? userEmail;
  static const fromJsonFactory = _$UserInviteRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInviteRequest &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectID) ^
      const DeepCollectionEquality().hash(userEmail) ^
      runtimeType.hashCode;
}

extension $UserInviteRequestExtension on UserInviteRequest {
  UserInviteRequest copyWith({String? projectID, String? userEmail}) {
    return UserInviteRequest(
        projectID: projectID ?? this.projectID,
        userEmail: userEmail ?? this.userEmail);
  }

  UserInviteRequest copyWithWrapped(
      {Wrapped<String?>? projectID, Wrapped<String?>? userEmail}) {
    return UserInviteRequest(
        projectID: (projectID != null ? projectID.value : this.projectID),
        userEmail: (userEmail != null ? userEmail.value : this.userEmail));
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectUserSummary {
  const ProjectUserSummary({
    required this.userName,
    required this.projectRights,
  });

  factory ProjectUserSummary.fromJson(Map<String, dynamic> json) =>
      _$ProjectUserSummaryFromJson(json);

  static const toJsonFactory = _$ProjectUserSummaryToJson;
  Map<String, dynamic> toJson() => _$ProjectUserSummaryToJson(this);

  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'projectRights', defaultValue: <String>[])
  final List<String> projectRights;
  static const fromJsonFactory = _$ProjectUserSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectUserSummary &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.projectRights, projectRights) ||
                const DeepCollectionEquality()
                    .equals(other.projectRights, projectRights)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(projectRights) ^
      runtimeType.hashCode;
}

extension $ProjectUserSummaryExtension on ProjectUserSummary {
  ProjectUserSummary copyWith({String? userName, List<String>? projectRights}) {
    return ProjectUserSummary(
        userName: userName ?? this.userName,
        projectRights: projectRights ?? this.projectRights);
  }

  ProjectUserSummary copyWithWrapped(
      {Wrapped<String>? userName, Wrapped<List<String>>? projectRights}) {
    return ProjectUserSummary(
        userName: (userName != null ? userName.value : this.userName),
        projectRights:
            (projectRights != null ? projectRights.value : this.projectRights));
  }
}

@JsonSerializable(explicitToJson: true)
class GetProjectUsersRequest {
  const GetProjectUsersRequest({
    this.projectID,
  });

  factory GetProjectUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$GetProjectUsersRequestFromJson(json);

  static const toJsonFactory = _$GetProjectUsersRequestToJson;
  Map<String, dynamic> toJson() => _$GetProjectUsersRequestToJson(this);

  @JsonKey(name: 'projectID')
  final String? projectID;
  static const fromJsonFactory = _$GetProjectUsersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProjectUsersRequest &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectID) ^ runtimeType.hashCode;
}

extension $GetProjectUsersRequestExtension on GetProjectUsersRequest {
  GetProjectUsersRequest copyWith({String? projectID}) {
    return GetProjectUsersRequest(projectID: projectID ?? this.projectID);
  }

  GetProjectUsersRequest copyWithWrapped({Wrapped<String?>? projectID}) {
    return GetProjectUsersRequest(
        projectID: (projectID != null ? projectID.value : this.projectID));
  }
}

@JsonSerializable(explicitToJson: true)
class PageListOfSessionSummary {
  const PageListOfSessionSummary({
    required this.items,
    required this.pagination,
  });

  factory PageListOfSessionSummary.fromJson(Map<String, dynamic> json) =>
      _$PageListOfSessionSummaryFromJson(json);

  static const toJsonFactory = _$PageListOfSessionSummaryToJson;
  Map<String, dynamic> toJson() => _$PageListOfSessionSummaryToJson(this);

  @JsonKey(name: 'items', defaultValue: <SessionSummary>[])
  final List<SessionSummary> items;
  @JsonKey(name: 'pagination')
  final PaginationInfo? pagination;
  static const fromJsonFactory = _$PageListOfSessionSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfSessionSummary &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pagination) ^
      runtimeType.hashCode;
}

extension $PageListOfSessionSummaryExtension on PageListOfSessionSummary {
  PageListOfSessionSummary copyWith(
      {List<SessionSummary>? items, PaginationInfo? pagination}) {
    return PageListOfSessionSummary(
        items: items ?? this.items, pagination: pagination ?? this.pagination);
  }

  PageListOfSessionSummary copyWithWrapped(
      {Wrapped<List<SessionSummary>>? items,
      Wrapped<PaginationInfo?>? pagination}) {
    return PageListOfSessionSummary(
        items: (items != null ? items.value : this.items),
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionSummary {
  const SessionSummary({
    required this.id,
    required this.projectID,
    required this.deviceCode,
    required this.lastUpdateTime,
    this.totalEventsCount,
    this.totalErrorsCount,
  });

  factory SessionSummary.fromJson(Map<String, dynamic> json) =>
      _$SessionSummaryFromJson(json);

  static const toJsonFactory = _$SessionSummaryToJson;
  Map<String, dynamic> toJson() => _$SessionSummaryToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'projectID')
  final String projectID;
  @JsonKey(name: 'deviceCode')
  final String deviceCode;
  @JsonKey(name: 'lastUpdateTime')
  final DateTime lastUpdateTime;
  @JsonKey(name: 'totalEventsCount')
  final int? totalEventsCount;
  @JsonKey(name: 'totalErrorsCount')
  final int? totalErrorsCount;
  static const fromJsonFactory = _$SessionSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionSummary &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)) &&
            (identical(other.deviceCode, deviceCode) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCode, deviceCode)) &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdateTime, lastUpdateTime)) &&
            (identical(other.totalEventsCount, totalEventsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalEventsCount, totalEventsCount)) &&
            (identical(other.totalErrorsCount, totalErrorsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalErrorsCount, totalErrorsCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectID) ^
      const DeepCollectionEquality().hash(deviceCode) ^
      const DeepCollectionEquality().hash(lastUpdateTime) ^
      const DeepCollectionEquality().hash(totalEventsCount) ^
      const DeepCollectionEquality().hash(totalErrorsCount) ^
      runtimeType.hashCode;
}

extension $SessionSummaryExtension on SessionSummary {
  SessionSummary copyWith(
      {String? id,
      String? projectID,
      String? deviceCode,
      DateTime? lastUpdateTime,
      int? totalEventsCount,
      int? totalErrorsCount}) {
    return SessionSummary(
        id: id ?? this.id,
        projectID: projectID ?? this.projectID,
        deviceCode: deviceCode ?? this.deviceCode,
        lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
        totalEventsCount: totalEventsCount ?? this.totalEventsCount,
        totalErrorsCount: totalErrorsCount ?? this.totalErrorsCount);
  }

  SessionSummary copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? projectID,
      Wrapped<String>? deviceCode,
      Wrapped<DateTime>? lastUpdateTime,
      Wrapped<int?>? totalEventsCount,
      Wrapped<int?>? totalErrorsCount}) {
    return SessionSummary(
        id: (id != null ? id.value : this.id),
        projectID: (projectID != null ? projectID.value : this.projectID),
        deviceCode: (deviceCode != null ? deviceCode.value : this.deviceCode),
        lastUpdateTime: (lastUpdateTime != null
            ? lastUpdateTime.value
            : this.lastUpdateTime),
        totalEventsCount: (totalEventsCount != null
            ? totalEventsCount.value
            : this.totalEventsCount),
        totalErrorsCount: (totalErrorsCount != null
            ? totalErrorsCount.value
            : this.totalErrorsCount));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionFilter {
  const SessionFilter({
    this.projectID,
    this.page,
    this.pageSize,
    this.deviceID,
    this.sessionID,
    this.fromTS,
    this.toTS,
  });

  factory SessionFilter.fromJson(Map<String, dynamic> json) =>
      _$SessionFilterFromJson(json);

  static const toJsonFactory = _$SessionFilterToJson;
  Map<String, dynamic> toJson() => _$SessionFilterToJson(this);

  @JsonKey(name: 'projectID')
  final String? projectID;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'deviceID')
  final String? deviceID;
  @JsonKey(name: 'sessionID')
  final String? sessionID;
  @JsonKey(name: 'fromTS')
  final DateTime? fromTS;
  @JsonKey(name: 'toTS')
  final DateTime? toTS;
  static const fromJsonFactory = _$SessionFilterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFilter &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.sessionID, sessionID) ||
                const DeepCollectionEquality()
                    .equals(other.sessionID, sessionID)) &&
            (identical(other.fromTS, fromTS) ||
                const DeepCollectionEquality().equals(other.fromTS, fromTS)) &&
            (identical(other.toTS, toTS) ||
                const DeepCollectionEquality().equals(other.toTS, toTS)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectID) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(sessionID) ^
      const DeepCollectionEquality().hash(fromTS) ^
      const DeepCollectionEquality().hash(toTS) ^
      runtimeType.hashCode;
}

extension $SessionFilterExtension on SessionFilter {
  SessionFilter copyWith(
      {String? projectID,
      int? page,
      int? pageSize,
      String? deviceID,
      String? sessionID,
      DateTime? fromTS,
      DateTime? toTS}) {
    return SessionFilter(
        projectID: projectID ?? this.projectID,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        deviceID: deviceID ?? this.deviceID,
        sessionID: sessionID ?? this.sessionID,
        fromTS: fromTS ?? this.fromTS,
        toTS: toTS ?? this.toTS);
  }

  SessionFilter copyWithWrapped(
      {Wrapped<String?>? projectID,
      Wrapped<int?>? page,
      Wrapped<int?>? pageSize,
      Wrapped<String?>? deviceID,
      Wrapped<String?>? sessionID,
      Wrapped<DateTime?>? fromTS,
      Wrapped<DateTime?>? toTS}) {
    return SessionFilter(
        projectID: (projectID != null ? projectID.value : this.projectID),
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize),
        deviceID: (deviceID != null ? deviceID.value : this.deviceID),
        sessionID: (sessionID != null ? sessionID.value : this.sessionID),
        fromTS: (fromTS != null ? fromTS.value : this.fromTS),
        toTS: (toTS != null ? toTS.value : this.toTS));
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceInfo {
  const DeviceInfo({
    required this.code,
    required this.os,
    this.androidInfo,
    this.iosInfo,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  static const toJsonFactory = _$DeviceInfoToJson;
  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(
    name: 'os',
    toJson: deviceOSNullableToJson,
    fromJson: deviceOSNullableFromJson,
  )
  final enums.DeviceOS? os;
  @JsonKey(name: 'androidInfo')
  final AndroidInfo? androidInfo;
  @JsonKey(name: 'iosInfo')
  final IOSInfo? iosInfo;
  static const fromJsonFactory = _$DeviceInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceInfo &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.androidInfo, androidInfo) ||
                const DeepCollectionEquality()
                    .equals(other.androidInfo, androidInfo)) &&
            (identical(other.iosInfo, iosInfo) ||
                const DeepCollectionEquality().equals(other.iosInfo, iosInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(androidInfo) ^
      const DeepCollectionEquality().hash(iosInfo) ^
      runtimeType.hashCode;
}

extension $DeviceInfoExtension on DeviceInfo {
  DeviceInfo copyWith(
      {String? code,
      enums.DeviceOS? os,
      AndroidInfo? androidInfo,
      IOSInfo? iosInfo}) {
    return DeviceInfo(
        code: code ?? this.code,
        os: os ?? this.os,
        androidInfo: androidInfo ?? this.androidInfo,
        iosInfo: iosInfo ?? this.iosInfo);
  }

  DeviceInfo copyWithWrapped(
      {Wrapped<String>? code,
      Wrapped<enums.DeviceOS?>? os,
      Wrapped<AndroidInfo?>? androidInfo,
      Wrapped<IOSInfo?>? iosInfo}) {
    return DeviceInfo(
        code: (code != null ? code.value : this.code),
        os: (os != null ? os.value : this.os),
        androidInfo:
            (androidInfo != null ? androidInfo.value : this.androidInfo),
        iosInfo: (iosInfo != null ? iosInfo.value : this.iosInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class AndroidInfo {
  const AndroidInfo({
    required this.id,
    required this.host,
    required this.manifacturer,
    required this.androidVersion,
    required this.board,
    required this.bootLoader,
    required this.brand,
    required this.device,
    required this.display,
    required this.fingerprint,
    required this.hardware,
    required this.isPhysical,
    required this.model,
    required this.product,
    required this.serialNumber,
    required this.supported32BitAbis,
    required this.supported64BitAbis,
    required this.supportedAbis,
    required this.systemFeatures,
    required this.type,
  });

  factory AndroidInfo.fromJson(Map<String, dynamic> json) =>
      _$AndroidInfoFromJson(json);

  static const toJsonFactory = _$AndroidInfoToJson;
  Map<String, dynamic> toJson() => _$AndroidInfoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'host')
  final String host;
  @JsonKey(name: 'manifacturer')
  final String manifacturer;
  @JsonKey(name: 'androidVersion')
  final AndroidVersion? androidVersion;
  @JsonKey(name: 'board')
  final String board;
  @JsonKey(name: 'bootLoader')
  final String bootLoader;
  @JsonKey(name: 'brand')
  final String brand;
  @JsonKey(name: 'device')
  final String device;
  @JsonKey(name: 'display')
  final DisplayMetrics? display;
  @JsonKey(name: 'fingerprint')
  final String fingerprint;
  @JsonKey(name: 'hardware')
  final String hardware;
  @JsonKey(name: 'isPhysical')
  final bool isPhysical;
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'product')
  final String product;
  @JsonKey(name: 'serialNumber')
  final String serialNumber;
  @JsonKey(name: 'supported32BitAbis', defaultValue: <String>[])
  final List<String> supported32BitAbis;
  @JsonKey(name: 'supported64BitAbis', defaultValue: <String>[])
  final List<String> supported64BitAbis;
  @JsonKey(name: 'supportedAbis', defaultValue: <String>[])
  final List<String> supportedAbis;
  @JsonKey(name: 'systemFeatures', defaultValue: <String>[])
  final List<String> systemFeatures;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$AndroidInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.manifacturer, manifacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manifacturer, manifacturer)) &&
            (identical(other.androidVersion, androidVersion) ||
                const DeepCollectionEquality()
                    .equals(other.androidVersion, androidVersion)) &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.bootLoader, bootLoader) ||
                const DeepCollectionEquality()
                    .equals(other.bootLoader, bootLoader)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality()
                    .equals(other.display, display)) &&
            (identical(other.fingerprint, fingerprint) ||
                const DeepCollectionEquality()
                    .equals(other.fingerprint, fingerprint)) &&
            (identical(other.hardware, hardware) ||
                const DeepCollectionEquality()
                    .equals(other.hardware, hardware)) &&
            (identical(other.isPhysical, isPhysical) ||
                const DeepCollectionEquality()
                    .equals(other.isPhysical, isPhysical)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.supported32BitAbis, supported32BitAbis) ||
                const DeepCollectionEquality()
                    .equals(other.supported32BitAbis, supported32BitAbis)) &&
            (identical(other.supported64BitAbis, supported64BitAbis) ||
                const DeepCollectionEquality()
                    .equals(other.supported64BitAbis, supported64BitAbis)) &&
            (identical(other.supportedAbis, supportedAbis) ||
                const DeepCollectionEquality()
                    .equals(other.supportedAbis, supportedAbis)) &&
            (identical(other.systemFeatures, systemFeatures) ||
                const DeepCollectionEquality()
                    .equals(other.systemFeatures, systemFeatures)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(manifacturer) ^
      const DeepCollectionEquality().hash(androidVersion) ^
      const DeepCollectionEquality().hash(board) ^
      const DeepCollectionEquality().hash(bootLoader) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(display) ^
      const DeepCollectionEquality().hash(fingerprint) ^
      const DeepCollectionEquality().hash(hardware) ^
      const DeepCollectionEquality().hash(isPhysical) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(supported32BitAbis) ^
      const DeepCollectionEquality().hash(supported64BitAbis) ^
      const DeepCollectionEquality().hash(supportedAbis) ^
      const DeepCollectionEquality().hash(systemFeatures) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $AndroidInfoExtension on AndroidInfo {
  AndroidInfo copyWith(
      {String? id,
      String? host,
      String? manifacturer,
      AndroidVersion? androidVersion,
      String? board,
      String? bootLoader,
      String? brand,
      String? device,
      DisplayMetrics? display,
      String? fingerprint,
      String? hardware,
      bool? isPhysical,
      String? model,
      String? product,
      String? serialNumber,
      List<String>? supported32BitAbis,
      List<String>? supported64BitAbis,
      List<String>? supportedAbis,
      List<String>? systemFeatures,
      String? type}) {
    return AndroidInfo(
        id: id ?? this.id,
        host: host ?? this.host,
        manifacturer: manifacturer ?? this.manifacturer,
        androidVersion: androidVersion ?? this.androidVersion,
        board: board ?? this.board,
        bootLoader: bootLoader ?? this.bootLoader,
        brand: brand ?? this.brand,
        device: device ?? this.device,
        display: display ?? this.display,
        fingerprint: fingerprint ?? this.fingerprint,
        hardware: hardware ?? this.hardware,
        isPhysical: isPhysical ?? this.isPhysical,
        model: model ?? this.model,
        product: product ?? this.product,
        serialNumber: serialNumber ?? this.serialNumber,
        supported32BitAbis: supported32BitAbis ?? this.supported32BitAbis,
        supported64BitAbis: supported64BitAbis ?? this.supported64BitAbis,
        supportedAbis: supportedAbis ?? this.supportedAbis,
        systemFeatures: systemFeatures ?? this.systemFeatures,
        type: type ?? this.type);
  }

  AndroidInfo copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? host,
      Wrapped<String>? manifacturer,
      Wrapped<AndroidVersion?>? androidVersion,
      Wrapped<String>? board,
      Wrapped<String>? bootLoader,
      Wrapped<String>? brand,
      Wrapped<String>? device,
      Wrapped<DisplayMetrics?>? display,
      Wrapped<String>? fingerprint,
      Wrapped<String>? hardware,
      Wrapped<bool>? isPhysical,
      Wrapped<String>? model,
      Wrapped<String>? product,
      Wrapped<String>? serialNumber,
      Wrapped<List<String>>? supported32BitAbis,
      Wrapped<List<String>>? supported64BitAbis,
      Wrapped<List<String>>? supportedAbis,
      Wrapped<List<String>>? systemFeatures,
      Wrapped<String>? type}) {
    return AndroidInfo(
        id: (id != null ? id.value : this.id),
        host: (host != null ? host.value : this.host),
        manifacturer:
            (manifacturer != null ? manifacturer.value : this.manifacturer),
        androidVersion: (androidVersion != null
            ? androidVersion.value
            : this.androidVersion),
        board: (board != null ? board.value : this.board),
        bootLoader: (bootLoader != null ? bootLoader.value : this.bootLoader),
        brand: (brand != null ? brand.value : this.brand),
        device: (device != null ? device.value : this.device),
        display: (display != null ? display.value : this.display),
        fingerprint:
            (fingerprint != null ? fingerprint.value : this.fingerprint),
        hardware: (hardware != null ? hardware.value : this.hardware),
        isPhysical: (isPhysical != null ? isPhysical.value : this.isPhysical),
        model: (model != null ? model.value : this.model),
        product: (product != null ? product.value : this.product),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        supported32BitAbis: (supported32BitAbis != null
            ? supported32BitAbis.value
            : this.supported32BitAbis),
        supported64BitAbis: (supported64BitAbis != null
            ? supported64BitAbis.value
            : this.supported64BitAbis),
        supportedAbis:
            (supportedAbis != null ? supportedAbis.value : this.supportedAbis),
        systemFeatures: (systemFeatures != null
            ? systemFeatures.value
            : this.systemFeatures),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class AndroidVersion {
  const AndroidVersion({
    this.baseOS,
    this.previewSdkInt,
    this.securityPatch,
    required this.codeName,
    required this.incremental,
    required this.release,
    required this.sdkInt,
  });

  factory AndroidVersion.fromJson(Map<String, dynamic> json) =>
      _$AndroidVersionFromJson(json);

  static const toJsonFactory = _$AndroidVersionToJson;
  Map<String, dynamic> toJson() => _$AndroidVersionToJson(this);

  @JsonKey(name: 'baseOS')
  final String? baseOS;
  @JsonKey(name: 'previewSdkInt')
  final int? previewSdkInt;
  @JsonKey(name: 'securityPatch')
  final String? securityPatch;
  @JsonKey(name: 'codeName')
  final String codeName;
  @JsonKey(name: 'incremental')
  final String incremental;
  @JsonKey(name: 'release')
  final String release;
  @JsonKey(name: 'sdkInt')
  final int sdkInt;
  static const fromJsonFactory = _$AndroidVersionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidVersion &&
            (identical(other.baseOS, baseOS) ||
                const DeepCollectionEquality().equals(other.baseOS, baseOS)) &&
            (identical(other.previewSdkInt, previewSdkInt) ||
                const DeepCollectionEquality()
                    .equals(other.previewSdkInt, previewSdkInt)) &&
            (identical(other.securityPatch, securityPatch) ||
                const DeepCollectionEquality()
                    .equals(other.securityPatch, securityPatch)) &&
            (identical(other.codeName, codeName) ||
                const DeepCollectionEquality()
                    .equals(other.codeName, codeName)) &&
            (identical(other.incremental, incremental) ||
                const DeepCollectionEquality()
                    .equals(other.incremental, incremental)) &&
            (identical(other.release, release) ||
                const DeepCollectionEquality()
                    .equals(other.release, release)) &&
            (identical(other.sdkInt, sdkInt) ||
                const DeepCollectionEquality().equals(other.sdkInt, sdkInt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(baseOS) ^
      const DeepCollectionEquality().hash(previewSdkInt) ^
      const DeepCollectionEquality().hash(securityPatch) ^
      const DeepCollectionEquality().hash(codeName) ^
      const DeepCollectionEquality().hash(incremental) ^
      const DeepCollectionEquality().hash(release) ^
      const DeepCollectionEquality().hash(sdkInt) ^
      runtimeType.hashCode;
}

extension $AndroidVersionExtension on AndroidVersion {
  AndroidVersion copyWith(
      {String? baseOS,
      int? previewSdkInt,
      String? securityPatch,
      String? codeName,
      String? incremental,
      String? release,
      int? sdkInt}) {
    return AndroidVersion(
        baseOS: baseOS ?? this.baseOS,
        previewSdkInt: previewSdkInt ?? this.previewSdkInt,
        securityPatch: securityPatch ?? this.securityPatch,
        codeName: codeName ?? this.codeName,
        incremental: incremental ?? this.incremental,
        release: release ?? this.release,
        sdkInt: sdkInt ?? this.sdkInt);
  }

  AndroidVersion copyWithWrapped(
      {Wrapped<String?>? baseOS,
      Wrapped<int?>? previewSdkInt,
      Wrapped<String?>? securityPatch,
      Wrapped<String>? codeName,
      Wrapped<String>? incremental,
      Wrapped<String>? release,
      Wrapped<int>? sdkInt}) {
    return AndroidVersion(
        baseOS: (baseOS != null ? baseOS.value : this.baseOS),
        previewSdkInt:
            (previewSdkInt != null ? previewSdkInt.value : this.previewSdkInt),
        securityPatch:
            (securityPatch != null ? securityPatch.value : this.securityPatch),
        codeName: (codeName != null ? codeName.value : this.codeName),
        incremental:
            (incremental != null ? incremental.value : this.incremental),
        release: (release != null ? release.value : this.release),
        sdkInt: (sdkInt != null ? sdkInt.value : this.sdkInt));
  }
}

@JsonSerializable(explicitToJson: true)
class DisplayMetrics {
  const DisplayMetrics({
    required this.widthPx,
    required this.heightPx,
    required this.xDpi,
    required this.yDpi,
  });

  factory DisplayMetrics.fromJson(Map<String, dynamic> json) =>
      _$DisplayMetricsFromJson(json);

  static const toJsonFactory = _$DisplayMetricsToJson;
  Map<String, dynamic> toJson() => _$DisplayMetricsToJson(this);

  @JsonKey(name: 'widthPx')
  final int widthPx;
  @JsonKey(name: 'heightPx')
  final int heightPx;
  @JsonKey(name: 'xDpi')
  final int xDpi;
  @JsonKey(name: 'yDpi')
  final int yDpi;
  static const fromJsonFactory = _$DisplayMetricsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisplayMetrics &&
            (identical(other.widthPx, widthPx) ||
                const DeepCollectionEquality()
                    .equals(other.widthPx, widthPx)) &&
            (identical(other.heightPx, heightPx) ||
                const DeepCollectionEquality()
                    .equals(other.heightPx, heightPx)) &&
            (identical(other.xDpi, xDpi) ||
                const DeepCollectionEquality().equals(other.xDpi, xDpi)) &&
            (identical(other.yDpi, yDpi) ||
                const DeepCollectionEquality().equals(other.yDpi, yDpi)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(widthPx) ^
      const DeepCollectionEquality().hash(heightPx) ^
      const DeepCollectionEquality().hash(xDpi) ^
      const DeepCollectionEquality().hash(yDpi) ^
      runtimeType.hashCode;
}

extension $DisplayMetricsExtension on DisplayMetrics {
  DisplayMetrics copyWith({int? widthPx, int? heightPx, int? xDpi, int? yDpi}) {
    return DisplayMetrics(
        widthPx: widthPx ?? this.widthPx,
        heightPx: heightPx ?? this.heightPx,
        xDpi: xDpi ?? this.xDpi,
        yDpi: yDpi ?? this.yDpi);
  }

  DisplayMetrics copyWithWrapped(
      {Wrapped<int>? widthPx,
      Wrapped<int>? heightPx,
      Wrapped<int>? xDpi,
      Wrapped<int>? yDpi}) {
    return DisplayMetrics(
        widthPx: (widthPx != null ? widthPx.value : this.widthPx),
        heightPx: (heightPx != null ? heightPx.value : this.heightPx),
        xDpi: (xDpi != null ? xDpi.value : this.xDpi),
        yDpi: (yDpi != null ? yDpi.value : this.yDpi));
  }
}

@JsonSerializable(explicitToJson: true)
class IOSInfo {
  const IOSInfo({
    required this.isPhysical,
    required this.localizedModel,
    required this.model,
    required this.systemVersion,
    required this.systemName,
    required this.utsName,
  });

  factory IOSInfo.fromJson(Map<String, dynamic> json) =>
      _$IOSInfoFromJson(json);

  static const toJsonFactory = _$IOSInfoToJson;
  Map<String, dynamic> toJson() => _$IOSInfoToJson(this);

  @JsonKey(name: 'isPhysical')
  final bool isPhysical;
  @JsonKey(name: 'localizedModel')
  final String localizedModel;
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'systemVersion')
  final String systemVersion;
  @JsonKey(name: 'systemName')
  final String systemName;
  @JsonKey(name: 'utsName')
  final UtsName? utsName;
  static const fromJsonFactory = _$IOSInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IOSInfo &&
            (identical(other.isPhysical, isPhysical) ||
                const DeepCollectionEquality()
                    .equals(other.isPhysical, isPhysical)) &&
            (identical(other.localizedModel, localizedModel) ||
                const DeepCollectionEquality()
                    .equals(other.localizedModel, localizedModel)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.systemVersion, systemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.systemVersion, systemVersion)) &&
            (identical(other.systemName, systemName) ||
                const DeepCollectionEquality()
                    .equals(other.systemName, systemName)) &&
            (identical(other.utsName, utsName) ||
                const DeepCollectionEquality().equals(other.utsName, utsName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isPhysical) ^
      const DeepCollectionEquality().hash(localizedModel) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(systemVersion) ^
      const DeepCollectionEquality().hash(systemName) ^
      const DeepCollectionEquality().hash(utsName) ^
      runtimeType.hashCode;
}

extension $IOSInfoExtension on IOSInfo {
  IOSInfo copyWith(
      {bool? isPhysical,
      String? localizedModel,
      String? model,
      String? systemVersion,
      String? systemName,
      UtsName? utsName}) {
    return IOSInfo(
        isPhysical: isPhysical ?? this.isPhysical,
        localizedModel: localizedModel ?? this.localizedModel,
        model: model ?? this.model,
        systemVersion: systemVersion ?? this.systemVersion,
        systemName: systemName ?? this.systemName,
        utsName: utsName ?? this.utsName);
  }

  IOSInfo copyWithWrapped(
      {Wrapped<bool>? isPhysical,
      Wrapped<String>? localizedModel,
      Wrapped<String>? model,
      Wrapped<String>? systemVersion,
      Wrapped<String>? systemName,
      Wrapped<UtsName?>? utsName}) {
    return IOSInfo(
        isPhysical: (isPhysical != null ? isPhysical.value : this.isPhysical),
        localizedModel: (localizedModel != null
            ? localizedModel.value
            : this.localizedModel),
        model: (model != null ? model.value : this.model),
        systemVersion:
            (systemVersion != null ? systemVersion.value : this.systemVersion),
        systemName: (systemName != null ? systemName.value : this.systemName),
        utsName: (utsName != null ? utsName.value : this.utsName));
  }
}

@JsonSerializable(explicitToJson: true)
class UtsName {
  const UtsName({
    required this.sysName,
    required this.nodeName,
    required this.releaseName,
    required this.version,
    required this.machine,
  });

  factory UtsName.fromJson(Map<String, dynamic> json) =>
      _$UtsNameFromJson(json);

  static const toJsonFactory = _$UtsNameToJson;
  Map<String, dynamic> toJson() => _$UtsNameToJson(this);

  @JsonKey(name: 'sysName')
  final String sysName;
  @JsonKey(name: 'nodeName')
  final String nodeName;
  @JsonKey(name: 'releaseName')
  final String releaseName;
  @JsonKey(name: 'version')
  final String version;
  @JsonKey(name: 'machine')
  final String machine;
  static const fromJsonFactory = _$UtsNameFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UtsName &&
            (identical(other.sysName, sysName) ||
                const DeepCollectionEquality()
                    .equals(other.sysName, sysName)) &&
            (identical(other.nodeName, nodeName) ||
                const DeepCollectionEquality()
                    .equals(other.nodeName, nodeName)) &&
            (identical(other.releaseName, releaseName) ||
                const DeepCollectionEquality()
                    .equals(other.releaseName, releaseName)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.machine, machine) ||
                const DeepCollectionEquality().equals(other.machine, machine)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sysName) ^
      const DeepCollectionEquality().hash(nodeName) ^
      const DeepCollectionEquality().hash(releaseName) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(machine) ^
      runtimeType.hashCode;
}

extension $UtsNameExtension on UtsName {
  UtsName copyWith(
      {String? sysName,
      String? nodeName,
      String? releaseName,
      String? version,
      String? machine}) {
    return UtsName(
        sysName: sysName ?? this.sysName,
        nodeName: nodeName ?? this.nodeName,
        releaseName: releaseName ?? this.releaseName,
        version: version ?? this.version,
        machine: machine ?? this.machine);
  }

  UtsName copyWithWrapped(
      {Wrapped<String>? sysName,
      Wrapped<String>? nodeName,
      Wrapped<String>? releaseName,
      Wrapped<String>? version,
      Wrapped<String>? machine}) {
    return UtsName(
        sysName: (sysName != null ? sysName.value : this.sysName),
        nodeName: (nodeName != null ? nodeName.value : this.nodeName),
        releaseName:
            (releaseName != null ? releaseName.value : this.releaseName),
        version: (version != null ? version.value : this.version),
        machine: (machine != null ? machine.value : this.machine));
  }
}

@JsonSerializable(explicitToJson: true)
class LiveDevicesListRequest {
  const LiveDevicesListRequest({
    required this.projectID,
  });

  factory LiveDevicesListRequest.fromJson(Map<String, dynamic> json) =>
      _$LiveDevicesListRequestFromJson(json);

  static const toJsonFactory = _$LiveDevicesListRequestToJson;
  Map<String, dynamic> toJson() => _$LiveDevicesListRequestToJson(this);

  @JsonKey(name: 'projectID')
  final String projectID;
  static const fromJsonFactory = _$LiveDevicesListRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LiveDevicesListRequest &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectID) ^ runtimeType.hashCode;
}

extension $LiveDevicesListRequestExtension on LiveDevicesListRequest {
  LiveDevicesListRequest copyWith({String? projectID}) {
    return LiveDevicesListRequest(projectID: projectID ?? this.projectID);
  }

  LiveDevicesListRequest copyWithWrapped({Wrapped<String>? projectID}) {
    return LiveDevicesListRequest(
        projectID: (projectID != null ? projectID.value : this.projectID));
  }
}

@JsonSerializable(explicitToJson: true)
class EventsBatch {
  const EventsBatch({
    required this.isLive,
    this.os,
    this.androidInfo,
    this.iosInfo,
    this.identification,
    required this.bundle,
    this.screenshotsBatch,
    required this.events,
    required this.projectID,
  });

  factory EventsBatch.fromJson(Map<String, dynamic> json) =>
      _$EventsBatchFromJson(json);

  static const toJsonFactory = _$EventsBatchToJson;
  Map<String, dynamic> toJson() => _$EventsBatchToJson(this);

  @JsonKey(name: 'isLive')
  final bool isLive;
  @JsonKey(
    name: 'os',
    toJson: deviceOSNullableToJson,
    fromJson: deviceOSNullableFromJson,
  )
  final enums.DeviceOS? os;
  @JsonKey(name: 'androidInfo')
  final AndroidInfo? androidInfo;
  @JsonKey(name: 'iosInfo')
  final IOSInfo? iosInfo;
  @JsonKey(name: 'identification')
  final Identification? identification;
  @JsonKey(name: 'bundle')
  final BundleInfo? bundle;
  @JsonKey(name: 'screenshotsBatch')
  final ScreenshotsBatch? screenshotsBatch;
  @JsonKey(name: 'events', defaultValue: <RegisteredEvent>[])
  final List<RegisteredEvent> events;
  @JsonKey(name: 'projectID')
  final String projectID;
  static const fromJsonFactory = _$EventsBatchFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventsBatch &&
            (identical(other.isLive, isLive) ||
                const DeepCollectionEquality().equals(other.isLive, isLive)) &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.androidInfo, androidInfo) ||
                const DeepCollectionEquality()
                    .equals(other.androidInfo, androidInfo)) &&
            (identical(other.iosInfo, iosInfo) ||
                const DeepCollectionEquality()
                    .equals(other.iosInfo, iosInfo)) &&
            (identical(other.identification, identification) ||
                const DeepCollectionEquality()
                    .equals(other.identification, identification)) &&
            (identical(other.bundle, bundle) ||
                const DeepCollectionEquality().equals(other.bundle, bundle)) &&
            (identical(other.screenshotsBatch, screenshotsBatch) ||
                const DeepCollectionEquality()
                    .equals(other.screenshotsBatch, screenshotsBatch)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)) &&
            (identical(other.projectID, projectID) ||
                const DeepCollectionEquality()
                    .equals(other.projectID, projectID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isLive) ^
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(androidInfo) ^
      const DeepCollectionEquality().hash(iosInfo) ^
      const DeepCollectionEquality().hash(identification) ^
      const DeepCollectionEquality().hash(bundle) ^
      const DeepCollectionEquality().hash(screenshotsBatch) ^
      const DeepCollectionEquality().hash(events) ^
      const DeepCollectionEquality().hash(projectID) ^
      runtimeType.hashCode;
}

extension $EventsBatchExtension on EventsBatch {
  EventsBatch copyWith(
      {bool? isLive,
      enums.DeviceOS? os,
      AndroidInfo? androidInfo,
      IOSInfo? iosInfo,
      Identification? identification,
      BundleInfo? bundle,
      ScreenshotsBatch? screenshotsBatch,
      List<RegisteredEvent>? events,
      String? projectID}) {
    return EventsBatch(
        isLive: isLive ?? this.isLive,
        os: os ?? this.os,
        androidInfo: androidInfo ?? this.androidInfo,
        iosInfo: iosInfo ?? this.iosInfo,
        identification: identification ?? this.identification,
        bundle: bundle ?? this.bundle,
        screenshotsBatch: screenshotsBatch ?? this.screenshotsBatch,
        events: events ?? this.events,
        projectID: projectID ?? this.projectID);
  }

  EventsBatch copyWithWrapped(
      {Wrapped<bool>? isLive,
      Wrapped<enums.DeviceOS?>? os,
      Wrapped<AndroidInfo?>? androidInfo,
      Wrapped<IOSInfo?>? iosInfo,
      Wrapped<Identification?>? identification,
      Wrapped<BundleInfo?>? bundle,
      Wrapped<ScreenshotsBatch?>? screenshotsBatch,
      Wrapped<List<RegisteredEvent>>? events,
      Wrapped<String>? projectID}) {
    return EventsBatch(
        isLive: (isLive != null ? isLive.value : this.isLive),
        os: (os != null ? os.value : this.os),
        androidInfo:
            (androidInfo != null ? androidInfo.value : this.androidInfo),
        iosInfo: (iosInfo != null ? iosInfo.value : this.iosInfo),
        identification: (identification != null
            ? identification.value
            : this.identification),
        bundle: (bundle != null ? bundle.value : this.bundle),
        screenshotsBatch: (screenshotsBatch != null
            ? screenshotsBatch.value
            : this.screenshotsBatch),
        events: (events != null ? events.value : this.events),
        projectID: (projectID != null ? projectID.value : this.projectID));
  }
}

@JsonSerializable(explicitToJson: true)
class Identification {
  const Identification({
    required this.code,
    this.userIdentification,
  });

  factory Identification.fromJson(Map<String, dynamic> json) =>
      _$IdentificationFromJson(json);

  static const toJsonFactory = _$IdentificationToJson;
  Map<String, dynamic> toJson() => _$IdentificationToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'userIdentification')
  final String? userIdentification;
  static const fromJsonFactory = _$IdentificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Identification &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.userIdentification, userIdentification) ||
                const DeepCollectionEquality()
                    .equals(other.userIdentification, userIdentification)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(userIdentification) ^
      runtimeType.hashCode;
}

extension $IdentificationExtension on Identification {
  Identification copyWith({String? code, String? userIdentification}) {
    return Identification(
        code: code ?? this.code,
        userIdentification: userIdentification ?? this.userIdentification);
  }

  Identification copyWithWrapped(
      {Wrapped<String>? code, Wrapped<String?>? userIdentification}) {
    return Identification(
        code: (code != null ? code.value : this.code),
        userIdentification: (userIdentification != null
            ? userIdentification.value
            : this.userIdentification));
  }
}

@JsonSerializable(explicitToJson: true)
class BundleInfo {
  const BundleInfo({
    this.version,
    this.build,
    this.branch,
  });

  factory BundleInfo.fromJson(Map<String, dynamic> json) =>
      _$BundleInfoFromJson(json);

  static const toJsonFactory = _$BundleInfoToJson;
  Map<String, dynamic> toJson() => _$BundleInfoToJson(this);

  @JsonKey(name: 'version')
  final String? version;
  @JsonKey(name: 'build')
  final String? build;
  @JsonKey(name: 'branch')
  final String? branch;
  static const fromJsonFactory = _$BundleInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BundleInfo &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.build, build) ||
                const DeepCollectionEquality().equals(other.build, build)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(build) ^
      const DeepCollectionEquality().hash(branch) ^
      runtimeType.hashCode;
}

extension $BundleInfoExtension on BundleInfo {
  BundleInfo copyWith({String? version, String? build, String? branch}) {
    return BundleInfo(
        version: version ?? this.version,
        build: build ?? this.build,
        branch: branch ?? this.branch);
  }

  BundleInfo copyWithWrapped(
      {Wrapped<String?>? version,
      Wrapped<String?>? build,
      Wrapped<String?>? branch}) {
    return BundleInfo(
        version: (version != null ? version.value : this.version),
        build: (build != null ? build.value : this.build),
        branch: (branch != null ? branch.value : this.branch));
  }
}

@JsonSerializable(explicitToJson: true)
class ScreenshotsBatch {
  const ScreenshotsBatch({
    this.framesMaping,
    this.frames,
  });

  factory ScreenshotsBatch.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotsBatchFromJson(json);

  static const toJsonFactory = _$ScreenshotsBatchToJson;
  Map<String, dynamic> toJson() => _$ScreenshotsBatchToJson(this);

  @JsonKey(name: 'framesMaping', defaultValue: <int>[])
  final List<int>? framesMaping;
  @JsonKey(name: 'frames', defaultValue: <String>[])
  final List<String>? frames;
  static const fromJsonFactory = _$ScreenshotsBatchFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreenshotsBatch &&
            (identical(other.framesMaping, framesMaping) ||
                const DeepCollectionEquality()
                    .equals(other.framesMaping, framesMaping)) &&
            (identical(other.frames, frames) ||
                const DeepCollectionEquality().equals(other.frames, frames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(framesMaping) ^
      const DeepCollectionEquality().hash(frames) ^
      runtimeType.hashCode;
}

extension $ScreenshotsBatchExtension on ScreenshotsBatch {
  ScreenshotsBatch copyWith({List<int>? framesMaping, List<String>? frames}) {
    return ScreenshotsBatch(
        framesMaping: framesMaping ?? this.framesMaping,
        frames: frames ?? this.frames);
  }

  ScreenshotsBatch copyWithWrapped(
      {Wrapped<List<int>?>? framesMaping, Wrapped<List<String>?>? frames}) {
    return ScreenshotsBatch(
        framesMaping:
            (framesMaping != null ? framesMaping.value : this.framesMaping),
        frames: (frames != null ? frames.value : this.frames));
  }
}

@JsonSerializable(explicitToJson: true)
class RegisteredEvent {
  const RegisteredEvent({
    required this.id,
    required this.timestamp,
    required this.identification,
    required this.kind,
    required this.scope,
    required this.severity,
    this.payload,
  });

  factory RegisteredEvent.fromJson(Map<String, dynamic> json) =>
      _$RegisteredEventFromJson(json);

  static const toJsonFactory = _$RegisteredEventToJson;
  Map<String, dynamic> toJson() => _$RegisteredEventToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @JsonKey(name: 'identification')
  final String identification;
  @JsonKey(name: 'kind')
  final String kind;
  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'severity')
  final String severity;
  @JsonKey(name: 'payload')
  final String? payload;
  static const fromJsonFactory = _$RegisteredEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisteredEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.identification, identification) ||
                const DeepCollectionEquality()
                    .equals(other.identification, identification)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(identification) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(severity) ^
      const DeepCollectionEquality().hash(payload) ^
      runtimeType.hashCode;
}

extension $RegisteredEventExtension on RegisteredEvent {
  RegisteredEvent copyWith(
      {String? id,
      int? timestamp,
      String? identification,
      String? kind,
      String? scope,
      String? severity,
      String? payload}) {
    return RegisteredEvent(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        identification: identification ?? this.identification,
        kind: kind ?? this.kind,
        scope: scope ?? this.scope,
        severity: severity ?? this.severity,
        payload: payload ?? this.payload);
  }

  RegisteredEvent copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<int>? timestamp,
      Wrapped<String>? identification,
      Wrapped<String>? kind,
      Wrapped<String>? scope,
      Wrapped<String>? severity,
      Wrapped<String?>? payload}) {
    return RegisteredEvent(
        id: (id != null ? id.value : this.id),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        identification: (identification != null
            ? identification.value
            : this.identification),
        kind: (kind != null ? kind.value : this.kind),
        scope: (scope != null ? scope.value : this.scope),
        severity: (severity != null ? severity.value : this.severity),
        payload: (payload != null ? payload.value : this.payload));
  }
}

int? deviceOSNullableToJson(enums.DeviceOS? deviceOS) {
  return deviceOS?.value;
}

int? deviceOSToJson(enums.DeviceOS deviceOS) {
  return deviceOS.value;
}

enums.DeviceOS deviceOSFromJson(
  Object? deviceOS, [
  enums.DeviceOS? defaultValue,
]) {
  return enums.DeviceOS.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          deviceOS?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DeviceOS.swaggerGeneratedUnknown;
}

enums.DeviceOS? deviceOSNullableFromJson(
  Object? deviceOS, [
  enums.DeviceOS? defaultValue,
]) {
  if (deviceOS == null) {
    return null;
  }
  return enums.DeviceOS.values.firstWhereOrNull((e) => e.value == deviceOS) ??
      defaultValue;
}

List<int> deviceOSListToJson(List<enums.DeviceOS>? deviceOS) {
  if (deviceOS == null) {
    return [];
  }

  return deviceOS.map((e) => e.value!).toList();
}

List<enums.DeviceOS> deviceOSListFromJson(
  List? deviceOS, [
  List<enums.DeviceOS>? defaultValue,
]) {
  if (deviceOS == null) {
    return defaultValue ?? [];
  }

  return deviceOS.map((e) => deviceOSFromJson(e.toString())).toList();
}

List<enums.DeviceOS>? deviceOSNullableListFromJson(
  List? deviceOS, [
  List<enums.DeviceOS>? defaultValue,
]) {
  if (deviceOS == null) {
    return defaultValue;
  }

  return deviceOS.map((e) => deviceOSFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
