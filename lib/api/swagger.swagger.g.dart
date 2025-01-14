// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: json['status'] as int?,
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

PageListOfArtefactDTO _$PageListOfArtefactDTOFromJson(
        Map<String, dynamic> json) =>
    PageListOfArtefactDTO(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ArtefactDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: json['pagination'] == null
          ? null
          : PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageListOfArtefactDTOToJson(
        PageListOfArtefactDTO instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

ArtefactDTO _$ArtefactDTOFromJson(Map<String, dynamic> json) => ArtefactDTO(
      id: json['id'] as String,
      downloadLink: json['downloadLink'] as String?,
      artefactExt: json['artefactExt'] as String?,
      environment: json['environment'] as String,
      platform: json['platform'] as String,
      flavor: json['flavor'] as String,
      version: json['version'] as String,
      build: json['build'] as int,
      publication: DateTime.parse(json['publication'] as String),
    );

Map<String, dynamic> _$ArtefactDTOToJson(ArtefactDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'downloadLink': instance.downloadLink,
      'artefactExt': instance.artefactExt,
      'environment': instance.environment,
      'platform': instance.platform,
      'flavor': instance.flavor,
      'version': instance.version,
      'build': instance.build,
      'publication': instance.publication.toIso8601String(),
    };

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) =>
    PaginationInfo(
      totalPages: json['totalPages'] as int,
      totalItems: json['totalItems'] as int,
      page: json['page'] as int,
    );

Map<String, dynamic> _$PaginationInfoToJson(PaginationInfo instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalItems': instance.totalItems,
      'page': instance.page,
    };

ArtefactsListRequest _$ArtefactsListRequestFromJson(
        Map<String, dynamic> json) =>
    ArtefactsListRequest(
      projectId: json['projectId'] as String?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
    );

Map<String, dynamic> _$ArtefactsListRequestToJson(
        ArtefactsListRequest instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };

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

PageListOfDeviceSummary _$PageListOfDeviceSummaryFromJson(
        Map<String, dynamic> json) =>
    PageListOfDeviceSummary(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => DeviceSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: json['pagination'] == null
          ? null
          : PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageListOfDeviceSummaryToJson(
        PageListOfDeviceSummary instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

DeviceSummary _$DeviceSummaryFromJson(Map<String, dynamic> json) =>
    DeviceSummary(
      deviceCode: json['deviceCode'] as String,
      sessionsCount: json['sessionsCount'] as int,
      associatedAccountsCount: json['associatedAccountsCount'] as int,
      exceptionsCount: json['exceptionsCount'] as int,
    );

Map<String, dynamic> _$DeviceSummaryToJson(DeviceSummary instance) =>
    <String, dynamic>{
      'deviceCode': instance.deviceCode,
      'sessionsCount': instance.sessionsCount,
      'associatedAccountsCount': instance.associatedAccountsCount,
      'exceptionsCount': instance.exceptionsCount,
    };

DevicesFilter _$DevicesFilterFromJson(Map<String, dynamic> json) =>
    DevicesFilter(
      projectID: json['projectID'] as String?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      deviceId: json['deviceId'] as String?,
      associatedAccountPhone: json['associatedAccountPhone'] as String?,
      associatedAccountEmail: json['associatedAccountEmail'] as String?,
    );

Map<String, dynamic> _$DevicesFilterToJson(DevicesFilter instance) =>
    <String, dynamic>{
      'projectID': instance.projectID,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'deviceId': instance.deviceId,
      'associatedAccountPhone': instance.associatedAccountPhone,
      'associatedAccountEmail': instance.associatedAccountEmail,
    };

PageListOfProblem _$PageListOfProblemFromJson(Map<String, dynamic> json) =>
    PageListOfProblem(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Problem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: json['pagination'] == null
          ? null
          : PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageListOfProblemToJson(PageListOfProblem instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

Problem _$ProblemFromJson(Map<String, dynamic> json) => Problem(
      id: json['id'] as String,
      error: json['error'] as String,
      isSolved: json['isSolved'] as bool,
      lastOccurance: DateTime.parse(json['lastOccurance'] as String),
      totalOccurances: json['totalOccurances'] as int,
      affectedDevices: json['affectedDevices'] as int,
      traces: (json['traces'] as List<dynamic>?)
              ?.map((e) => TraceEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProblemToJson(Problem instance) => <String, dynamic>{
      'id': instance.id,
      'error': instance.error,
      'isSolved': instance.isSolved,
      'lastOccurance': instance.lastOccurance.toIso8601String(),
      'totalOccurances': instance.totalOccurances,
      'affectedDevices': instance.affectedDevices,
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

ProblemsRequest _$ProblemsRequestFromJson(Map<String, dynamic> json) =>
    ProblemsRequest(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      projectId: json['projectId'] as String?,
      isSolved: json['isSolved'] as bool?,
    );

Map<String, dynamic> _$ProblemsRequestToJson(ProblemsRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'projectId': instance.projectId,
      'isSolved': instance.isSolved,
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

UserInviteRequest _$UserInviteRequestFromJson(Map<String, dynamic> json) =>
    UserInviteRequest(
      projectID: json['projectID'] as String?,
      userEmail: json['userEmail'] as String?,
    );

Map<String, dynamic> _$UserInviteRequestToJson(UserInviteRequest instance) =>
    <String, dynamic>{
      'projectID': instance.projectID,
      'userEmail': instance.userEmail,
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

PageListOfSessionSummary _$PageListOfSessionSummaryFromJson(
        Map<String, dynamic> json) =>
    PageListOfSessionSummary(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SessionSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: json['pagination'] == null
          ? null
          : PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageListOfSessionSummaryToJson(
        PageListOfSessionSummary instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

SessionSummary _$SessionSummaryFromJson(Map<String, dynamic> json) =>
    SessionSummary(
      id: json['id'] as String,
      projectID: json['projectID'] as String,
      deviceCode: json['deviceCode'] as String,
      lastUpdateTime: DateTime.parse(json['lastUpdateTime'] as String),
      totalEventsCount: json['totalEventsCount'] as int?,
      totalErrorsCount: json['totalErrorsCount'] as int?,
    );

Map<String, dynamic> _$SessionSummaryToJson(SessionSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectID': instance.projectID,
      'deviceCode': instance.deviceCode,
      'lastUpdateTime': instance.lastUpdateTime.toIso8601String(),
      'totalEventsCount': instance.totalEventsCount,
      'totalErrorsCount': instance.totalErrorsCount,
    };

SessionFilter _$SessionFilterFromJson(Map<String, dynamic> json) =>
    SessionFilter(
      projectID: json['projectID'] as String?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      deviceID: json['deviceID'] as String?,
      sessionID: json['sessionID'] as String?,
      fromTS: json['fromTS'] == null
          ? null
          : DateTime.parse(json['fromTS'] as String),
      toTS:
          json['toTS'] == null ? null : DateTime.parse(json['toTS'] as String),
    );

Map<String, dynamic> _$SessionFilterToJson(SessionFilter instance) =>
    <String, dynamic>{
      'projectID': instance.projectID,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'deviceID': instance.deviceID,
      'sessionID': instance.sessionID,
      'fromTS': instance.fromTS?.toIso8601String(),
      'toTS': instance.toTS?.toIso8601String(),
    };

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      code: json['code'] as String,
      os: deviceOSNullableFromJson(json['os']),
      androidInfo: json['androidInfo'] == null
          ? null
          : AndroidInfo.fromJson(json['androidInfo'] as Map<String, dynamic>),
      iosInfo: json['iosInfo'] == null
          ? null
          : IOSInfo.fromJson(json['iosInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'os': deviceOSNullableToJson(instance.os),
      'androidInfo': instance.androidInfo?.toJson(),
      'iosInfo': instance.iosInfo?.toJson(),
    };

AndroidInfo _$AndroidInfoFromJson(Map<String, dynamic> json) => AndroidInfo(
      id: json['id'] as String,
      host: json['host'] as String,
      manifacturer: json['manifacturer'] as String,
      androidVersion: json['androidVersion'] == null
          ? null
          : AndroidVersion.fromJson(
              json['androidVersion'] as Map<String, dynamic>),
      board: json['board'] as String,
      bootLoader: json['bootLoader'] as String,
      brand: json['brand'] as String,
      device: json['device'] as String,
      display: json['display'] == null
          ? null
          : DisplayMetrics.fromJson(json['display'] as Map<String, dynamic>),
      fingerprint: json['fingerprint'] as String,
      hardware: json['hardware'] as String,
      isPhysical: json['isPhysical'] as bool,
      model: json['model'] as String,
      product: json['product'] as String,
      serialNumber: json['serialNumber'] as String,
      supported32BitAbis: (json['supported32BitAbis'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supported64BitAbis: (json['supported64BitAbis'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supportedAbis: (json['supportedAbis'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      systemFeatures: (json['systemFeatures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      type: json['type'] as String,
    );

Map<String, dynamic> _$AndroidInfoToJson(AndroidInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'host': instance.host,
      'manifacturer': instance.manifacturer,
      'androidVersion': instance.androidVersion?.toJson(),
      'board': instance.board,
      'bootLoader': instance.bootLoader,
      'brand': instance.brand,
      'device': instance.device,
      'display': instance.display?.toJson(),
      'fingerprint': instance.fingerprint,
      'hardware': instance.hardware,
      'isPhysical': instance.isPhysical,
      'model': instance.model,
      'product': instance.product,
      'serialNumber': instance.serialNumber,
      'supported32BitAbis': instance.supported32BitAbis,
      'supported64BitAbis': instance.supported64BitAbis,
      'supportedAbis': instance.supportedAbis,
      'systemFeatures': instance.systemFeatures,
      'type': instance.type,
    };

AndroidVersion _$AndroidVersionFromJson(Map<String, dynamic> json) =>
    AndroidVersion(
      baseOS: json['baseOS'] as String?,
      previewSdkInt: json['previewSdkInt'] as int?,
      securityPatch: json['securityPatch'] as String?,
      codeName: json['codeName'] as String,
      incremental: json['incremental'] as String,
      release: json['release'] as String,
      sdkInt: json['sdkInt'] as int,
    );

Map<String, dynamic> _$AndroidVersionToJson(AndroidVersion instance) =>
    <String, dynamic>{
      'baseOS': instance.baseOS,
      'previewSdkInt': instance.previewSdkInt,
      'securityPatch': instance.securityPatch,
      'codeName': instance.codeName,
      'incremental': instance.incremental,
      'release': instance.release,
      'sdkInt': instance.sdkInt,
    };

DisplayMetrics _$DisplayMetricsFromJson(Map<String, dynamic> json) =>
    DisplayMetrics(
      widthPx: json['widthPx'] as int,
      heightPx: json['heightPx'] as int,
      xDpi: json['xDpi'] as int,
      yDpi: json['yDpi'] as int,
    );

Map<String, dynamic> _$DisplayMetricsToJson(DisplayMetrics instance) =>
    <String, dynamic>{
      'widthPx': instance.widthPx,
      'heightPx': instance.heightPx,
      'xDpi': instance.xDpi,
      'yDpi': instance.yDpi,
    };

IOSInfo _$IOSInfoFromJson(Map<String, dynamic> json) => IOSInfo(
      isPhysical: json['isPhysical'] as bool,
      localizedModel: json['localizedModel'] as String,
      model: json['model'] as String,
      systemVersion: json['systemVersion'] as String,
      systemName: json['systemName'] as String,
      utsName: json['utsName'] == null
          ? null
          : UtsName.fromJson(json['utsName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IOSInfoToJson(IOSInfo instance) => <String, dynamic>{
      'isPhysical': instance.isPhysical,
      'localizedModel': instance.localizedModel,
      'model': instance.model,
      'systemVersion': instance.systemVersion,
      'systemName': instance.systemName,
      'utsName': instance.utsName?.toJson(),
    };

UtsName _$UtsNameFromJson(Map<String, dynamic> json) => UtsName(
      sysName: json['sysName'] as String,
      nodeName: json['nodeName'] as String,
      releaseName: json['releaseName'] as String,
      version: json['version'] as String,
      machine: json['machine'] as String,
    );

Map<String, dynamic> _$UtsNameToJson(UtsName instance) => <String, dynamic>{
      'sysName': instance.sysName,
      'nodeName': instance.nodeName,
      'releaseName': instance.releaseName,
      'version': instance.version,
      'machine': instance.machine,
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
      os: deviceOSNullableFromJson(json['os']),
      androidInfo: json['androidInfo'] == null
          ? null
          : AndroidInfo.fromJson(json['androidInfo'] as Map<String, dynamic>),
      iosInfo: json['iosInfo'] == null
          ? null
          : IOSInfo.fromJson(json['iosInfo'] as Map<String, dynamic>),
      identification: json['identification'] == null
          ? null
          : Identification.fromJson(
              json['identification'] as Map<String, dynamic>),
      bundle: json['bundle'] == null
          ? null
          : BundleInfo.fromJson(json['bundle'] as Map<String, dynamic>),
      screenshotsBatch: json['screenshotsBatch'] == null
          ? null
          : ScreenshotsBatch.fromJson(
              json['screenshotsBatch'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => RegisteredEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      projectID: json['projectID'] as String,
    );

Map<String, dynamic> _$EventsBatchToJson(EventsBatch instance) =>
    <String, dynamic>{
      'isLive': instance.isLive,
      'os': deviceOSNullableToJson(instance.os),
      'androidInfo': instance.androidInfo?.toJson(),
      'iosInfo': instance.iosInfo?.toJson(),
      'identification': instance.identification?.toJson(),
      'bundle': instance.bundle?.toJson(),
      'screenshotsBatch': instance.screenshotsBatch?.toJson(),
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

BundleInfo _$BundleInfoFromJson(Map<String, dynamic> json) => BundleInfo(
      version: json['version'] as String?,
      build: json['build'] as String?,
      branch: json['branch'] as String?,
    );

Map<String, dynamic> _$BundleInfoToJson(BundleInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'build': instance.build,
      'branch': instance.branch,
    };

ScreenshotsBatch _$ScreenshotsBatchFromJson(Map<String, dynamic> json) =>
    ScreenshotsBatch(
      framesMaping: (json['framesMaping'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      frames: (json['frames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScreenshotsBatchToJson(ScreenshotsBatch instance) =>
    <String, dynamic>{
      'framesMaping': instance.framesMaping,
      'frames': instance.frames,
    };

RegisteredEvent _$RegisteredEventFromJson(Map<String, dynamic> json) =>
    RegisteredEvent(
      id: json['id'] as String,
      timestamp: json['timestamp'] as int,
      identification: json['identification'] as String,
      kind: json['kind'] as String,
      scope: json['scope'] as String,
      severity: json['severity'] as String,
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$RegisteredEventToJson(RegisteredEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'identification': instance.identification,
      'kind': instance.kind,
      'scope': instance.scope,
      'severity': instance.severity,
      'payload': instance.payload,
    };
