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
  Future<chopper.Response<List<ProjectInfo>>> apiProjectListGet() {
    generatedMapping.putIfAbsent(
        ProjectInfo, () => ProjectInfo.fromJsonFactory);

    return _apiProjectListGet();
  }

  ///
  @Get(path: '/api/project/list')
  Future<chopper.Response<List<ProjectInfo>>> _apiProjectListGet();

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
    required this.totalPages,
    required this.totalItems,
    required this.page,
  });

  factory PageListOfDeviceSummary.fromJson(Map<String, dynamic> json) =>
      _$PageListOfDeviceSummaryFromJson(json);

  static const toJsonFactory = _$PageListOfDeviceSummaryToJson;
  Map<String, dynamic> toJson() => _$PageListOfDeviceSummaryToJson(this);

  @JsonKey(name: 'items', defaultValue: <DeviceSummary>[])
  final List<DeviceSummary> items;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'totalItems')
  final int totalItems;
  @JsonKey(name: 'page')
  final int page;
  static const fromJsonFactory = _$PageListOfDeviceSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfDeviceSummary &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalItems) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PageListOfDeviceSummaryExtension on PageListOfDeviceSummary {
  PageListOfDeviceSummary copyWith(
      {List<DeviceSummary>? items,
      int? totalPages,
      int? totalItems,
      int? page}) {
    return PageListOfDeviceSummary(
        items: items ?? this.items,
        totalPages: totalPages ?? this.totalPages,
        totalItems: totalItems ?? this.totalItems,
        page: page ?? this.page);
  }

  PageListOfDeviceSummary copyWithWrapped(
      {Wrapped<List<DeviceSummary>>? items,
      Wrapped<int>? totalPages,
      Wrapped<int>? totalItems,
      Wrapped<int>? page}) {
    return PageListOfDeviceSummary(
        items: (items != null ? items.value : this.items),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalItems: (totalItems != null ? totalItems.value : this.totalItems),
        page: (page != null ? page.value : this.page));
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
    required this.totalPages,
    required this.totalItems,
    required this.page,
  });

  factory PageListOfSessionSummary.fromJson(Map<String, dynamic> json) =>
      _$PageListOfSessionSummaryFromJson(json);

  static const toJsonFactory = _$PageListOfSessionSummaryToJson;
  Map<String, dynamic> toJson() => _$PageListOfSessionSummaryToJson(this);

  @JsonKey(name: 'items', defaultValue: <SessionSummary>[])
  final List<SessionSummary> items;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'totalItems')
  final int totalItems;
  @JsonKey(name: 'page')
  final int page;
  static const fromJsonFactory = _$PageListOfSessionSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageListOfSessionSummary &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalItems) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PageListOfSessionSummaryExtension on PageListOfSessionSummary {
  PageListOfSessionSummary copyWith(
      {List<SessionSummary>? items,
      int? totalPages,
      int? totalItems,
      int? page}) {
    return PageListOfSessionSummary(
        items: items ?? this.items,
        totalPages: totalPages ?? this.totalPages,
        totalItems: totalItems ?? this.totalItems,
        page: page ?? this.page);
  }

  PageListOfSessionSummary copyWithWrapped(
      {Wrapped<List<SessionSummary>>? items,
      Wrapped<int>? totalPages,
      Wrapped<int>? totalItems,
      Wrapped<int>? page}) {
    return PageListOfSessionSummary(
        items: (items != null ? items.value : this.items),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalItems: (totalItems != null ? totalItems.value : this.totalItems),
        page: (page != null ? page.value : this.page));
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
    required this.parameters,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  static const toJsonFactory = _$DeviceInfoToJson;
  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'parameters')
  final Map<String, dynamic> parameters;
  static const fromJsonFactory = _$DeviceInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceInfo &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.parameters, parameters) ||
                const DeepCollectionEquality()
                    .equals(other.parameters, parameters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(parameters) ^
      runtimeType.hashCode;
}

extension $DeviceInfoExtension on DeviceInfo {
  DeviceInfo copyWith({String? code, Map<String, dynamic>? parameters}) {
    return DeviceInfo(
        code: code ?? this.code, parameters: parameters ?? this.parameters);
  }

  DeviceInfo copyWithWrapped(
      {Wrapped<String>? code, Wrapped<Map<String, dynamic>>? parameters}) {
    return DeviceInfo(
        code: (code != null ? code.value : this.code),
        parameters: (parameters != null ? parameters.value : this.parameters));
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
    required this.deviceInfo,
    this.identification,
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
  @JsonKey(name: 'deviceInfo')
  final Map<String, dynamic> deviceInfo;
  @JsonKey(name: 'identification')
  final Identification? identification;
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
            (identical(other.deviceInfo, deviceInfo) ||
                const DeepCollectionEquality()
                    .equals(other.deviceInfo, deviceInfo)) &&
            (identical(other.identification, identification) ||
                const DeepCollectionEquality()
                    .equals(other.identification, identification)) &&
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
      const DeepCollectionEquality().hash(deviceInfo) ^
      const DeepCollectionEquality().hash(identification) ^
      const DeepCollectionEquality().hash(screenshotsBatch) ^
      const DeepCollectionEquality().hash(events) ^
      const DeepCollectionEquality().hash(projectID) ^
      runtimeType.hashCode;
}

extension $EventsBatchExtension on EventsBatch {
  EventsBatch copyWith(
      {bool? isLive,
      Map<String, dynamic>? deviceInfo,
      Identification? identification,
      ScreenshotsBatch? screenshotsBatch,
      List<RegisteredEvent>? events,
      String? projectID}) {
    return EventsBatch(
        isLive: isLive ?? this.isLive,
        deviceInfo: deviceInfo ?? this.deviceInfo,
        identification: identification ?? this.identification,
        screenshotsBatch: screenshotsBatch ?? this.screenshotsBatch,
        events: events ?? this.events,
        projectID: projectID ?? this.projectID);
  }

  EventsBatch copyWithWrapped(
      {Wrapped<bool>? isLive,
      Wrapped<Map<String, dynamic>>? deviceInfo,
      Wrapped<Identification?>? identification,
      Wrapped<ScreenshotsBatch?>? screenshotsBatch,
      Wrapped<List<RegisteredEvent>>? events,
      Wrapped<String>? projectID}) {
    return EventsBatch(
        isLive: (isLive != null ? isLive.value : this.isLive),
        deviceInfo: (deviceInfo != null ? deviceInfo.value : this.deviceInfo),
        identification: (identification != null
            ? identification.value
            : this.identification),
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
class ScreenshotsBatch {
  const ScreenshotsBatch({
    this.frameIndexes,
    this.data,
  });

  factory ScreenshotsBatch.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotsBatchFromJson(json);

  static const toJsonFactory = _$ScreenshotsBatchToJson;
  Map<String, dynamic> toJson() => _$ScreenshotsBatchToJson(this);

  @JsonKey(name: 'frameIndexes', defaultValue: <int>[])
  final List<int>? frameIndexes;
  @JsonKey(name: 'data')
  final String? data;
  static const fromJsonFactory = _$ScreenshotsBatchFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreenshotsBatch &&
            (identical(other.frameIndexes, frameIndexes) ||
                const DeepCollectionEquality()
                    .equals(other.frameIndexes, frameIndexes)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(frameIndexes) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ScreenshotsBatchExtension on ScreenshotsBatch {
  ScreenshotsBatch copyWith({List<int>? frameIndexes, String? data}) {
    return ScreenshotsBatch(
        frameIndexes: frameIndexes ?? this.frameIndexes,
        data: data ?? this.data);
  }

  ScreenshotsBatch copyWithWrapped(
      {Wrapped<List<int>?>? frameIndexes, Wrapped<String?>? data}) {
    return ScreenshotsBatch(
        frameIndexes:
            (frameIndexes != null ? frameIndexes.value : this.frameIndexes),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class RegisteredEvent {
  const RegisteredEvent({
    required this.id,
    required this.timestamp,
    required this.kind,
    this.textEvent,
    this.stateEvent,
    this.exceptionEvent,
    this.networkEvent,
    this.storageEvent,
    this.tapEvent,
    this.scrollEvent,
    this.navigationEvent,
  });

  factory RegisteredEvent.fromJson(Map<String, dynamic> json) =>
      _$RegisteredEventFromJson(json);

  static const toJsonFactory = _$RegisteredEventToJson;
  Map<String, dynamic> toJson() => _$RegisteredEventToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @JsonKey(
    name: 'kind',
    toJson: eventKindNullableToJson,
    fromJson: eventKindNullableFromJson,
  )
  final enums.EventKind? kind;
  @JsonKey(name: 'textEvent')
  final TextEvent? textEvent;
  @JsonKey(name: 'stateEvent')
  final StateEvent? stateEvent;
  @JsonKey(name: 'exceptionEvent')
  final ExceptionEvent? exceptionEvent;
  @JsonKey(name: 'networkEvent')
  final NetworkEvent? networkEvent;
  @JsonKey(name: 'storageEvent')
  final StorageEvent? storageEvent;
  @JsonKey(name: 'tapEvent')
  final TapEvent? tapEvent;
  @JsonKey(name: 'scrollEvent')
  final ScrollEvent? scrollEvent;
  @JsonKey(name: 'navigationEvent')
  final NavigationEvent? navigationEvent;
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
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.textEvent, textEvent) ||
                const DeepCollectionEquality()
                    .equals(other.textEvent, textEvent)) &&
            (identical(other.stateEvent, stateEvent) ||
                const DeepCollectionEquality()
                    .equals(other.stateEvent, stateEvent)) &&
            (identical(other.exceptionEvent, exceptionEvent) ||
                const DeepCollectionEquality()
                    .equals(other.exceptionEvent, exceptionEvent)) &&
            (identical(other.networkEvent, networkEvent) ||
                const DeepCollectionEquality()
                    .equals(other.networkEvent, networkEvent)) &&
            (identical(other.storageEvent, storageEvent) ||
                const DeepCollectionEquality()
                    .equals(other.storageEvent, storageEvent)) &&
            (identical(other.tapEvent, tapEvent) ||
                const DeepCollectionEquality()
                    .equals(other.tapEvent, tapEvent)) &&
            (identical(other.scrollEvent, scrollEvent) ||
                const DeepCollectionEquality()
                    .equals(other.scrollEvent, scrollEvent)) &&
            (identical(other.navigationEvent, navigationEvent) ||
                const DeepCollectionEquality()
                    .equals(other.navigationEvent, navigationEvent)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(textEvent) ^
      const DeepCollectionEquality().hash(stateEvent) ^
      const DeepCollectionEquality().hash(exceptionEvent) ^
      const DeepCollectionEquality().hash(networkEvent) ^
      const DeepCollectionEquality().hash(storageEvent) ^
      const DeepCollectionEquality().hash(tapEvent) ^
      const DeepCollectionEquality().hash(scrollEvent) ^
      const DeepCollectionEquality().hash(navigationEvent) ^
      runtimeType.hashCode;
}

extension $RegisteredEventExtension on RegisteredEvent {
  RegisteredEvent copyWith(
      {String? id,
      int? timestamp,
      enums.EventKind? kind,
      TextEvent? textEvent,
      StateEvent? stateEvent,
      ExceptionEvent? exceptionEvent,
      NetworkEvent? networkEvent,
      StorageEvent? storageEvent,
      TapEvent? tapEvent,
      ScrollEvent? scrollEvent,
      NavigationEvent? navigationEvent}) {
    return RegisteredEvent(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        kind: kind ?? this.kind,
        textEvent: textEvent ?? this.textEvent,
        stateEvent: stateEvent ?? this.stateEvent,
        exceptionEvent: exceptionEvent ?? this.exceptionEvent,
        networkEvent: networkEvent ?? this.networkEvent,
        storageEvent: storageEvent ?? this.storageEvent,
        tapEvent: tapEvent ?? this.tapEvent,
        scrollEvent: scrollEvent ?? this.scrollEvent,
        navigationEvent: navigationEvent ?? this.navigationEvent);
  }

  RegisteredEvent copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<int>? timestamp,
      Wrapped<enums.EventKind?>? kind,
      Wrapped<TextEvent?>? textEvent,
      Wrapped<StateEvent?>? stateEvent,
      Wrapped<ExceptionEvent?>? exceptionEvent,
      Wrapped<NetworkEvent?>? networkEvent,
      Wrapped<StorageEvent?>? storageEvent,
      Wrapped<TapEvent?>? tapEvent,
      Wrapped<ScrollEvent?>? scrollEvent,
      Wrapped<NavigationEvent?>? navigationEvent}) {
    return RegisteredEvent(
        id: (id != null ? id.value : this.id),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        kind: (kind != null ? kind.value : this.kind),
        textEvent: (textEvent != null ? textEvent.value : this.textEvent),
        stateEvent: (stateEvent != null ? stateEvent.value : this.stateEvent),
        exceptionEvent: (exceptionEvent != null
            ? exceptionEvent.value
            : this.exceptionEvent),
        networkEvent:
            (networkEvent != null ? networkEvent.value : this.networkEvent),
        storageEvent:
            (storageEvent != null ? storageEvent.value : this.storageEvent),
        tapEvent: (tapEvent != null ? tapEvent.value : this.tapEvent),
        scrollEvent:
            (scrollEvent != null ? scrollEvent.value : this.scrollEvent),
        navigationEvent: (navigationEvent != null
            ? navigationEvent.value
            : this.navigationEvent));
  }
}

@JsonSerializable(explicitToJson: true)
class TextEvent {
  const TextEvent({
    required this.scope,
    required this.text,
    this.payload,
  });

  factory TextEvent.fromJson(Map<String, dynamic> json) =>
      _$TextEventFromJson(json);

  static const toJsonFactory = _$TextEventToJson;
  Map<String, dynamic> toJson() => _$TextEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'payload')
  final String? payload;
  static const fromJsonFactory = _$TextEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(payload) ^
      runtimeType.hashCode;
}

extension $TextEventExtension on TextEvent {
  TextEvent copyWith({String? scope, String? text, String? payload}) {
    return TextEvent(
        scope: scope ?? this.scope,
        text: text ?? this.text,
        payload: payload ?? this.payload);
  }

  TextEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? text,
      Wrapped<String?>? payload}) {
    return TextEvent(
        scope: (scope != null ? scope.value : this.scope),
        text: (text != null ? text.value : this.text),
        payload: (payload != null ? payload.value : this.payload));
  }
}

@JsonSerializable(explicitToJson: true)
class StateEvent {
  const StateEvent({
    required this.scope,
    required this.stateName,
    required this.value,
  });

  factory StateEvent.fromJson(Map<String, dynamic> json) =>
      _$StateEventFromJson(json);

  static const toJsonFactory = _$StateEventToJson;
  Map<String, dynamic> toJson() => _$StateEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'stateName')
  final String stateName;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory = _$StateEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.stateName, stateName) ||
                const DeepCollectionEquality()
                    .equals(other.stateName, stateName)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(stateName) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $StateEventExtension on StateEvent {
  StateEvent copyWith({String? scope, String? stateName, String? value}) {
    return StateEvent(
        scope: scope ?? this.scope,
        stateName: stateName ?? this.stateName,
        value: value ?? this.value);
  }

  StateEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? stateName,
      Wrapped<String>? value}) {
    return StateEvent(
        scope: (scope != null ? scope.value : this.scope),
        stateName: (stateName != null ? stateName.value : this.stateName),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class ExceptionEvent {
  const ExceptionEvent({
    required this.scope,
    required this.exception,
    required this.traces,
  });

  factory ExceptionEvent.fromJson(Map<String, dynamic> json) =>
      _$ExceptionEventFromJson(json);

  static const toJsonFactory = _$ExceptionEventToJson;
  Map<String, dynamic> toJson() => _$ExceptionEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'exception')
  final String exception;
  @JsonKey(name: 'traces', defaultValue: <TraceEntry>[])
  final List<TraceEntry> traces;
  static const fromJsonFactory = _$ExceptionEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceptionEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.traces, traces) ||
                const DeepCollectionEquality().equals(other.traces, traces)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(traces) ^
      runtimeType.hashCode;
}

extension $ExceptionEventExtension on ExceptionEvent {
  ExceptionEvent copyWith(
      {String? scope, String? exception, List<TraceEntry>? traces}) {
    return ExceptionEvent(
        scope: scope ?? this.scope,
        exception: exception ?? this.exception,
        traces: traces ?? this.traces);
  }

  ExceptionEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? exception,
      Wrapped<List<TraceEntry>>? traces}) {
    return ExceptionEvent(
        scope: (scope != null ? scope.value : this.scope),
        exception: (exception != null ? exception.value : this.exception),
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
class NetworkEvent {
  const NetworkEvent({
    required this.scope,
    required this.url,
    required this.statusCode,
    required this.requestHeaders,
    required this.responseHeaders,
    this.requestPayload,
    this.responsePayload,
  });

  factory NetworkEvent.fromJson(Map<String, dynamic> json) =>
      _$NetworkEventFromJson(json);

  static const toJsonFactory = _$NetworkEventToJson;
  Map<String, dynamic> toJson() => _$NetworkEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'statusCode')
  final int statusCode;
  @JsonKey(name: 'requestHeaders')
  final Map<String, dynamic> requestHeaders;
  @JsonKey(name: 'responseHeaders')
  final Map<String, dynamic> responseHeaders;
  @JsonKey(name: 'requestPayload')
  final NetworkPayload? requestPayload;
  @JsonKey(name: 'responsePayload')
  final NetworkPayload? responsePayload;
  static const fromJsonFactory = _$NetworkEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.requestHeaders, requestHeaders) ||
                const DeepCollectionEquality()
                    .equals(other.requestHeaders, requestHeaders)) &&
            (identical(other.responseHeaders, responseHeaders) ||
                const DeepCollectionEquality()
                    .equals(other.responseHeaders, responseHeaders)) &&
            (identical(other.requestPayload, requestPayload) ||
                const DeepCollectionEquality()
                    .equals(other.requestPayload, requestPayload)) &&
            (identical(other.responsePayload, responsePayload) ||
                const DeepCollectionEquality()
                    .equals(other.responsePayload, responsePayload)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(requestHeaders) ^
      const DeepCollectionEquality().hash(responseHeaders) ^
      const DeepCollectionEquality().hash(requestPayload) ^
      const DeepCollectionEquality().hash(responsePayload) ^
      runtimeType.hashCode;
}

extension $NetworkEventExtension on NetworkEvent {
  NetworkEvent copyWith(
      {String? scope,
      String? url,
      int? statusCode,
      Map<String, dynamic>? requestHeaders,
      Map<String, dynamic>? responseHeaders,
      NetworkPayload? requestPayload,
      NetworkPayload? responsePayload}) {
    return NetworkEvent(
        scope: scope ?? this.scope,
        url: url ?? this.url,
        statusCode: statusCode ?? this.statusCode,
        requestHeaders: requestHeaders ?? this.requestHeaders,
        responseHeaders: responseHeaders ?? this.responseHeaders,
        requestPayload: requestPayload ?? this.requestPayload,
        responsePayload: responsePayload ?? this.responsePayload);
  }

  NetworkEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? url,
      Wrapped<int>? statusCode,
      Wrapped<Map<String, dynamic>>? requestHeaders,
      Wrapped<Map<String, dynamic>>? responseHeaders,
      Wrapped<NetworkPayload?>? requestPayload,
      Wrapped<NetworkPayload?>? responsePayload}) {
    return NetworkEvent(
        scope: (scope != null ? scope.value : this.scope),
        url: (url != null ? url.value : this.url),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        requestHeaders: (requestHeaders != null
            ? requestHeaders.value
            : this.requestHeaders),
        responseHeaders: (responseHeaders != null
            ? responseHeaders.value
            : this.responseHeaders),
        requestPayload: (requestPayload != null
            ? requestPayload.value
            : this.requestPayload),
        responsePayload: (responsePayload != null
            ? responsePayload.value
            : this.responsePayload));
  }
}

@JsonSerializable(explicitToJson: true)
class NetworkPayload {
  const NetworkPayload({
    required this.kind,
    this.formData,
    this.json,
    this.custom,
  });

  factory NetworkPayload.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadFromJson(json);

  static const toJsonFactory = _$NetworkPayloadToJson;
  Map<String, dynamic> toJson() => _$NetworkPayloadToJson(this);

  @JsonKey(
    name: 'kind',
    toJson: networkPayloadKindNullableToJson,
    fromJson: networkPayloadKindNullableFromJson,
  )
  final enums.NetworkPayloadKind? kind;
  @JsonKey(name: 'formData')
  final Map<String, dynamic>? formData;
  @JsonKey(name: 'json')
  final String? json;
  @JsonKey(name: 'custom')
  final String? custom;
  static const fromJsonFactory = _$NetworkPayloadFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkPayload &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.formData, formData) ||
                const DeepCollectionEquality()
                    .equals(other.formData, formData)) &&
            (identical(other.json, json) ||
                const DeepCollectionEquality().equals(other.json, json)) &&
            (identical(other.custom, custom) ||
                const DeepCollectionEquality().equals(other.custom, custom)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(formData) ^
      const DeepCollectionEquality().hash(json) ^
      const DeepCollectionEquality().hash(custom) ^
      runtimeType.hashCode;
}

extension $NetworkPayloadExtension on NetworkPayload {
  NetworkPayload copyWith(
      {enums.NetworkPayloadKind? kind,
      Map<String, dynamic>? formData,
      String? json,
      String? custom}) {
    return NetworkPayload(
        kind: kind ?? this.kind,
        formData: formData ?? this.formData,
        json: json ?? this.json,
        custom: custom ?? this.custom);
  }

  NetworkPayload copyWithWrapped(
      {Wrapped<enums.NetworkPayloadKind?>? kind,
      Wrapped<Map<String, dynamic>?>? formData,
      Wrapped<String?>? json,
      Wrapped<String?>? custom}) {
    return NetworkPayload(
        kind: (kind != null ? kind.value : this.kind),
        formData: (formData != null ? formData.value : this.formData),
        json: (json != null ? json.value : this.json),
        custom: (custom != null ? custom.value : this.custom));
  }
}

@JsonSerializable(explicitToJson: true)
class StorageEvent {
  const StorageEvent({
    required this.scope,
    required this.key,
    required this.value,
  });

  factory StorageEvent.fromJson(Map<String, dynamic> json) =>
      _$StorageEventFromJson(json);

  static const toJsonFactory = _$StorageEventToJson;
  Map<String, dynamic> toJson() => _$StorageEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'key')
  final String key;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory = _$StorageEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StorageEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $StorageEventExtension on StorageEvent {
  StorageEvent copyWith({String? scope, String? key, String? value}) {
    return StorageEvent(
        scope: scope ?? this.scope,
        key: key ?? this.key,
        value: value ?? this.value);
  }

  StorageEvent copyWithWrapped(
      {Wrapped<String>? scope, Wrapped<String>? key, Wrapped<String>? value}) {
    return StorageEvent(
        scope: (scope != null ? scope.value : this.scope),
        key: (key != null ? key.value : this.key),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class TapEvent {
  const TapEvent({
    required this.scope,
    required this.x,
    required this.y,
    this.identification,
    this.payload,
  });

  factory TapEvent.fromJson(Map<String, dynamic> json) =>
      _$TapEventFromJson(json);

  static const toJsonFactory = _$TapEventToJson;
  Map<String, dynamic> toJson() => _$TapEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'x')
  final double x;
  @JsonKey(name: 'y')
  final double y;
  @JsonKey(name: 'identification')
  final String? identification;
  @JsonKey(name: 'payload')
  final String? payload;
  static const fromJsonFactory = _$TapEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TapEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.identification, identification) ||
                const DeepCollectionEquality()
                    .equals(other.identification, identification)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(identification) ^
      const DeepCollectionEquality().hash(payload) ^
      runtimeType.hashCode;
}

extension $TapEventExtension on TapEvent {
  TapEvent copyWith(
      {String? scope,
      double? x,
      double? y,
      String? identification,
      String? payload}) {
    return TapEvent(
        scope: scope ?? this.scope,
        x: x ?? this.x,
        y: y ?? this.y,
        identification: identification ?? this.identification,
        payload: payload ?? this.payload);
  }

  TapEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<double>? x,
      Wrapped<double>? y,
      Wrapped<String?>? identification,
      Wrapped<String?>? payload}) {
    return TapEvent(
        scope: (scope != null ? scope.value : this.scope),
        x: (x != null ? x.value : this.x),
        y: (y != null ? y.value : this.y),
        identification: (identification != null
            ? identification.value
            : this.identification),
        payload: (payload != null ? payload.value : this.payload));
  }
}

@JsonSerializable(explicitToJson: true)
class ScrollEvent {
  const ScrollEvent({
    required this.scope,
    required this.identification,
    this.payload,
    required this.offsetStart,
    required this.offsetEnd,
    required this.viewport,
  });

  factory ScrollEvent.fromJson(Map<String, dynamic> json) =>
      _$ScrollEventFromJson(json);

  static const toJsonFactory = _$ScrollEventToJson;
  Map<String, dynamic> toJson() => _$ScrollEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'identification')
  final String identification;
  @JsonKey(name: 'payload')
  final String? payload;
  @JsonKey(name: 'offsetStart')
  final double offsetStart;
  @JsonKey(name: 'offsetEnd')
  final double offsetEnd;
  @JsonKey(name: 'viewport')
  final double viewport;
  static const fromJsonFactory = _$ScrollEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScrollEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.identification, identification) ||
                const DeepCollectionEquality()
                    .equals(other.identification, identification)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.offsetStart, offsetStart) ||
                const DeepCollectionEquality()
                    .equals(other.offsetStart, offsetStart)) &&
            (identical(other.offsetEnd, offsetEnd) ||
                const DeepCollectionEquality()
                    .equals(other.offsetEnd, offsetEnd)) &&
            (identical(other.viewport, viewport) ||
                const DeepCollectionEquality()
                    .equals(other.viewport, viewport)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(identification) ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(offsetStart) ^
      const DeepCollectionEquality().hash(offsetEnd) ^
      const DeepCollectionEquality().hash(viewport) ^
      runtimeType.hashCode;
}

extension $ScrollEventExtension on ScrollEvent {
  ScrollEvent copyWith(
      {String? scope,
      String? identification,
      String? payload,
      double? offsetStart,
      double? offsetEnd,
      double? viewport}) {
    return ScrollEvent(
        scope: scope ?? this.scope,
        identification: identification ?? this.identification,
        payload: payload ?? this.payload,
        offsetStart: offsetStart ?? this.offsetStart,
        offsetEnd: offsetEnd ?? this.offsetEnd,
        viewport: viewport ?? this.viewport);
  }

  ScrollEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? identification,
      Wrapped<String?>? payload,
      Wrapped<double>? offsetStart,
      Wrapped<double>? offsetEnd,
      Wrapped<double>? viewport}) {
    return ScrollEvent(
        scope: (scope != null ? scope.value : this.scope),
        identification: (identification != null
            ? identification.value
            : this.identification),
        payload: (payload != null ? payload.value : this.payload),
        offsetStart:
            (offsetStart != null ? offsetStart.value : this.offsetStart),
        offsetEnd: (offsetEnd != null ? offsetEnd.value : this.offsetEnd),
        viewport: (viewport != null ? viewport.value : this.viewport));
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationEvent {
  const NavigationEvent({
    required this.scope,
    required this.kind,
    required this.routeName,
    this.previousRouteName,
    this.arguments,
    this.previousArguments,
    this.popResult,
  });

  factory NavigationEvent.fromJson(Map<String, dynamic> json) =>
      _$NavigationEventFromJson(json);

  static const toJsonFactory = _$NavigationEventToJson;
  Map<String, dynamic> toJson() => _$NavigationEventToJson(this);

  @JsonKey(name: 'scope')
  final String scope;
  @JsonKey(name: 'kind')
  final String kind;
  @JsonKey(name: 'routeName')
  final String routeName;
  @JsonKey(name: 'previousRouteName')
  final String? previousRouteName;
  @JsonKey(name: 'arguments')
  final String? arguments;
  @JsonKey(name: 'previousArguments')
  final String? previousArguments;
  @JsonKey(name: 'popResult')
  final String? popResult;
  static const fromJsonFactory = _$NavigationEventFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationEvent &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.routeName, routeName) ||
                const DeepCollectionEquality()
                    .equals(other.routeName, routeName)) &&
            (identical(other.previousRouteName, previousRouteName) ||
                const DeepCollectionEquality()
                    .equals(other.previousRouteName, previousRouteName)) &&
            (identical(other.arguments, arguments) ||
                const DeepCollectionEquality()
                    .equals(other.arguments, arguments)) &&
            (identical(other.previousArguments, previousArguments) ||
                const DeepCollectionEquality()
                    .equals(other.previousArguments, previousArguments)) &&
            (identical(other.popResult, popResult) ||
                const DeepCollectionEquality()
                    .equals(other.popResult, popResult)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(routeName) ^
      const DeepCollectionEquality().hash(previousRouteName) ^
      const DeepCollectionEquality().hash(arguments) ^
      const DeepCollectionEquality().hash(previousArguments) ^
      const DeepCollectionEquality().hash(popResult) ^
      runtimeType.hashCode;
}

extension $NavigationEventExtension on NavigationEvent {
  NavigationEvent copyWith(
      {String? scope,
      String? kind,
      String? routeName,
      String? previousRouteName,
      String? arguments,
      String? previousArguments,
      String? popResult}) {
    return NavigationEvent(
        scope: scope ?? this.scope,
        kind: kind ?? this.kind,
        routeName: routeName ?? this.routeName,
        previousRouteName: previousRouteName ?? this.previousRouteName,
        arguments: arguments ?? this.arguments,
        previousArguments: previousArguments ?? this.previousArguments,
        popResult: popResult ?? this.popResult);
  }

  NavigationEvent copyWithWrapped(
      {Wrapped<String>? scope,
      Wrapped<String>? kind,
      Wrapped<String>? routeName,
      Wrapped<String?>? previousRouteName,
      Wrapped<String?>? arguments,
      Wrapped<String?>? previousArguments,
      Wrapped<String?>? popResult}) {
    return NavigationEvent(
        scope: (scope != null ? scope.value : this.scope),
        kind: (kind != null ? kind.value : this.kind),
        routeName: (routeName != null ? routeName.value : this.routeName),
        previousRouteName: (previousRouteName != null
            ? previousRouteName.value
            : this.previousRouteName),
        arguments: (arguments != null ? arguments.value : this.arguments),
        previousArguments: (previousArguments != null
            ? previousArguments.value
            : this.previousArguments),
        popResult: (popResult != null ? popResult.value : this.popResult));
  }
}

int? deviceInfoEntryKindNullableToJson(
    enums.DeviceInfoEntryKind? deviceInfoEntryKind) {
  return deviceInfoEntryKind?.value;
}

int? deviceInfoEntryKindToJson(enums.DeviceInfoEntryKind deviceInfoEntryKind) {
  return deviceInfoEntryKind.value;
}

enums.DeviceInfoEntryKind deviceInfoEntryKindFromJson(
  Object? deviceInfoEntryKind, [
  enums.DeviceInfoEntryKind? defaultValue,
]) {
  return enums.DeviceInfoEntryKind.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          deviceInfoEntryKind?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DeviceInfoEntryKind.swaggerGeneratedUnknown;
}

enums.DeviceInfoEntryKind? deviceInfoEntryKindNullableFromJson(
  Object? deviceInfoEntryKind, [
  enums.DeviceInfoEntryKind? defaultValue,
]) {
  if (deviceInfoEntryKind == null) {
    return null;
  }
  return enums.DeviceInfoEntryKind.values
          .firstWhereOrNull((e) => e.value == deviceInfoEntryKind) ??
      defaultValue;
}

List<int> deviceInfoEntryKindListToJson(
    List<enums.DeviceInfoEntryKind>? deviceInfoEntryKind) {
  if (deviceInfoEntryKind == null) {
    return [];
  }

  return deviceInfoEntryKind.map((e) => e.value!).toList();
}

List<enums.DeviceInfoEntryKind> deviceInfoEntryKindListFromJson(
  List? deviceInfoEntryKind, [
  List<enums.DeviceInfoEntryKind>? defaultValue,
]) {
  if (deviceInfoEntryKind == null) {
    return defaultValue ?? [];
  }

  return deviceInfoEntryKind
      .map((e) => deviceInfoEntryKindFromJson(e.toString()))
      .toList();
}

List<enums.DeviceInfoEntryKind>? deviceInfoEntryKindNullableListFromJson(
  List? deviceInfoEntryKind, [
  List<enums.DeviceInfoEntryKind>? defaultValue,
]) {
  if (deviceInfoEntryKind == null) {
    return defaultValue;
  }

  return deviceInfoEntryKind
      .map((e) => deviceInfoEntryKindFromJson(e.toString()))
      .toList();
}

int? eventKindNullableToJson(enums.EventKind? eventKind) {
  return eventKind?.value;
}

int? eventKindToJson(enums.EventKind eventKind) {
  return eventKind.value;
}

enums.EventKind eventKindFromJson(
  Object? eventKind, [
  enums.EventKind? defaultValue,
]) {
  return enums.EventKind.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          eventKind?.toString().toLowerCase()) ??
      defaultValue ??
      enums.EventKind.swaggerGeneratedUnknown;
}

enums.EventKind? eventKindNullableFromJson(
  Object? eventKind, [
  enums.EventKind? defaultValue,
]) {
  if (eventKind == null) {
    return null;
  }
  return enums.EventKind.values.firstWhereOrNull((e) => e.value == eventKind) ??
      defaultValue;
}

List<int> eventKindListToJson(List<enums.EventKind>? eventKind) {
  if (eventKind == null) {
    return [];
  }

  return eventKind.map((e) => e.value!).toList();
}

List<enums.EventKind> eventKindListFromJson(
  List? eventKind, [
  List<enums.EventKind>? defaultValue,
]) {
  if (eventKind == null) {
    return defaultValue ?? [];
  }

  return eventKind.map((e) => eventKindFromJson(e.toString())).toList();
}

List<enums.EventKind>? eventKindNullableListFromJson(
  List? eventKind, [
  List<enums.EventKind>? defaultValue,
]) {
  if (eventKind == null) {
    return defaultValue;
  }

  return eventKind.map((e) => eventKindFromJson(e.toString())).toList();
}

int? networkPayloadKindNullableToJson(
    enums.NetworkPayloadKind? networkPayloadKind) {
  return networkPayloadKind?.value;
}

int? networkPayloadKindToJson(enums.NetworkPayloadKind networkPayloadKind) {
  return networkPayloadKind.value;
}

enums.NetworkPayloadKind networkPayloadKindFromJson(
  Object? networkPayloadKind, [
  enums.NetworkPayloadKind? defaultValue,
]) {
  return enums.NetworkPayloadKind.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          networkPayloadKind?.toString().toLowerCase()) ??
      defaultValue ??
      enums.NetworkPayloadKind.swaggerGeneratedUnknown;
}

enums.NetworkPayloadKind? networkPayloadKindNullableFromJson(
  Object? networkPayloadKind, [
  enums.NetworkPayloadKind? defaultValue,
]) {
  if (networkPayloadKind == null) {
    return null;
  }
  return enums.NetworkPayloadKind.values
          .firstWhereOrNull((e) => e.value == networkPayloadKind) ??
      defaultValue;
}

List<int> networkPayloadKindListToJson(
    List<enums.NetworkPayloadKind>? networkPayloadKind) {
  if (networkPayloadKind == null) {
    return [];
  }

  return networkPayloadKind.map((e) => e.value!).toList();
}

List<enums.NetworkPayloadKind> networkPayloadKindListFromJson(
  List? networkPayloadKind, [
  List<enums.NetworkPayloadKind>? defaultValue,
]) {
  if (networkPayloadKind == null) {
    return defaultValue ?? [];
  }

  return networkPayloadKind
      .map((e) => networkPayloadKindFromJson(e.toString()))
      .toList();
}

List<enums.NetworkPayloadKind>? networkPayloadKindNullableListFromJson(
  List? networkPayloadKind, [
  List<enums.NetworkPayloadKind>? defaultValue,
]) {
  if (networkPayloadKind == null) {
    return defaultValue;
  }

  return networkPayloadKind
      .map((e) => networkPayloadKindFromJson(e.toString()))
      .toList();
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
