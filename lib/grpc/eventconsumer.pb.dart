//
//  Generated code. Do not modify.
//  source: eventconsumer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'eventconsumer.pbenum.dart';

export 'eventconsumer.pbenum.dart';

class Stub extends $pb.GeneratedMessage {
  factory Stub() => create();
  Stub._() : super();
  factory Stub.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stub.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Stub', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stub clone() => Stub()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stub copyWith(void Function(Stub) updates) => super.copyWith((message) => updates(message as Stub)) as Stub;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stub create() => Stub._();
  Stub createEmptyInstance() => create();
  static $pb.PbList<Stub> createRepeated() => $pb.PbList<Stub>();
  @$core.pragma('dart2js:noInline')
  static Stub getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stub>(create);
  static Stub? _defaultInstance;
}

class ConsumeOk extends $pb.GeneratedMessage {
  factory ConsumeOk() => create();
  ConsumeOk._() : super();
  factory ConsumeOk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConsumeOk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConsumeOk', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConsumeOk clone() => ConsumeOk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConsumeOk copyWith(void Function(ConsumeOk) updates) => super.copyWith((message) => updates(message as ConsumeOk)) as ConsumeOk;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsumeOk create() => ConsumeOk._();
  ConsumeOk createEmptyInstance() => create();
  static $pb.PbList<ConsumeOk> createRepeated() => $pb.PbList<ConsumeOk>();
  @$core.pragma('dart2js:noInline')
  static ConsumeOk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConsumeOk>(create);
  static ConsumeOk? _defaultInstance;
}

enum DeviceCommand_Command {
  restart, 
  cleanMemory, 
  notSet
}

class DeviceCommand extends $pb.GeneratedMessage {
  factory DeviceCommand({
    Restart? restart,
    CleanMemory? cleanMemory,
  }) {
    final $result = create();
    if (restart != null) {
      $result.restart = restart;
    }
    if (cleanMemory != null) {
      $result.cleanMemory = cleanMemory;
    }
    return $result;
  }
  DeviceCommand._() : super();
  factory DeviceCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeviceCommand_Command> _DeviceCommand_CommandByTag = {
    1 : DeviceCommand_Command.restart,
    2 : DeviceCommand_Command.cleanMemory,
    0 : DeviceCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Restart>(1, _omitFieldNames ? '' : 'restart', subBuilder: Restart.create)
    ..aOM<CleanMemory>(2, _omitFieldNames ? '' : 'cleanMemory', subBuilder: CleanMemory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceCommand clone() => DeviceCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceCommand copyWith(void Function(DeviceCommand) updates) => super.copyWith((message) => updates(message as DeviceCommand)) as DeviceCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceCommand create() => DeviceCommand._();
  DeviceCommand createEmptyInstance() => create();
  static $pb.PbList<DeviceCommand> createRepeated() => $pb.PbList<DeviceCommand>();
  @$core.pragma('dart2js:noInline')
  static DeviceCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceCommand>(create);
  static DeviceCommand? _defaultInstance;

  DeviceCommand_Command whichCommand() => _DeviceCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Restart get restart => $_getN(0);
  @$pb.TagNumber(1)
  set restart(Restart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestart() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestart() => clearField(1);
  @$pb.TagNumber(1)
  Restart ensureRestart() => $_ensure(0);

  @$pb.TagNumber(2)
  CleanMemory get cleanMemory => $_getN(1);
  @$pb.TagNumber(2)
  set cleanMemory(CleanMemory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCleanMemory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCleanMemory() => clearField(2);
  @$pb.TagNumber(2)
  CleanMemory ensureCleanMemory() => $_ensure(1);
}

class CleanMemory extends $pb.GeneratedMessage {
  factory CleanMemory() => create();
  CleanMemory._() : super();
  factory CleanMemory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CleanMemory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CleanMemory', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CleanMemory clone() => CleanMemory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CleanMemory copyWith(void Function(CleanMemory) updates) => super.copyWith((message) => updates(message as CleanMemory)) as CleanMemory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CleanMemory create() => CleanMemory._();
  CleanMemory createEmptyInstance() => create();
  static $pb.PbList<CleanMemory> createRepeated() => $pb.PbList<CleanMemory>();
  @$core.pragma('dart2js:noInline')
  static CleanMemory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CleanMemory>(create);
  static CleanMemory? _defaultInstance;
}

class Restart extends $pb.GeneratedMessage {
  factory Restart() => create();
  Restart._() : super();
  factory Restart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Restart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Restart', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Restart clone() => Restart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Restart copyWith(void Function(Restart) updates) => super.copyWith((message) => updates(message as Restart)) as Restart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Restart create() => Restart._();
  Restart createEmptyInstance() => create();
  static $pb.PbList<Restart> createRepeated() => $pb.PbList<Restart>();
  @$core.pragma('dart2js:noInline')
  static Restart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Restart>(create);
  static Restart? _defaultInstance;
}

class EventsBatch extends $pb.GeneratedMessage {
  factory EventsBatch({
    $core.String? batchId,
    IdentificationInfo? identification,
    $core.Iterable<RegisteredAppEvent>? events,
    $core.bool? isLive,
  }) {
    final $result = create();
    if (batchId != null) {
      $result.batchId = batchId;
    }
    if (identification != null) {
      $result.identification = identification;
    }
    if (events != null) {
      $result.events.addAll(events);
    }
    if (isLive != null) {
      $result.isLive = isLive;
    }
    return $result;
  }
  EventsBatch._() : super();
  factory EventsBatch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsBatch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventsBatch', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'batchId', protoName: 'batchId')
    ..aOM<IdentificationInfo>(2, _omitFieldNames ? '' : 'identification', subBuilder: IdentificationInfo.create)
    ..pc<RegisteredAppEvent>(3, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM, subBuilder: RegisteredAppEvent.create)
    ..aOB(4, _omitFieldNames ? '' : 'isLive', protoName: 'isLive')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventsBatch clone() => EventsBatch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventsBatch copyWith(void Function(EventsBatch) updates) => super.copyWith((message) => updates(message as EventsBatch)) as EventsBatch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventsBatch create() => EventsBatch._();
  EventsBatch createEmptyInstance() => create();
  static $pb.PbList<EventsBatch> createRepeated() => $pb.PbList<EventsBatch>();
  @$core.pragma('dart2js:noInline')
  static EventsBatch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventsBatch>(create);
  static EventsBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get batchId => $_getSZ(0);
  @$pb.TagNumber(1)
  set batchId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatchId() => clearField(1);

  @$pb.TagNumber(2)
  IdentificationInfo get identification => $_getN(1);
  @$pb.TagNumber(2)
  set identification(IdentificationInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdentification() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentification() => clearField(2);
  @$pb.TagNumber(2)
  IdentificationInfo ensureIdentification() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<RegisteredAppEvent> get events => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get isLive => $_getBF(3);
  @$pb.TagNumber(4)
  set isLive($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsLive() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLive() => clearField(4);
}

class IdentificationInfo extends $pb.GeneratedMessage {
  factory IdentificationInfo({
    $core.String? code,
    $core.String? userIdentification,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (userIdentification != null) {
      $result.userIdentification = userIdentification;
    }
    return $result;
  }
  IdentificationInfo._() : super();
  factory IdentificationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdentificationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IdentificationInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'userIdentification', protoName: 'userIdentification')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IdentificationInfo clone() => IdentificationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IdentificationInfo copyWith(void Function(IdentificationInfo) updates) => super.copyWith((message) => updates(message as IdentificationInfo)) as IdentificationInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IdentificationInfo create() => IdentificationInfo._();
  IdentificationInfo createEmptyInstance() => create();
  static $pb.PbList<IdentificationInfo> createRepeated() => $pb.PbList<IdentificationInfo>();
  @$core.pragma('dart2js:noInline')
  static IdentificationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdentificationInfo>(create);
  static IdentificationInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userIdentification => $_getSZ(1);
  @$pb.TagNumber(3)
  set userIdentification($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserIdentification() => $_has(1);
  @$pb.TagNumber(3)
  void clearUserIdentification() => clearField(3);
}

enum RegisteredAppEvent_Event {
  text, 
  stateChange, 
  network, 
  tap, 
  storage, 
  exception, 
  notSet
}

class RegisteredAppEvent extends $pb.GeneratedMessage {
  factory RegisteredAppEvent({
    $core.String? id,
    $fixnum.Int64? timestamp,
    TextAppEvent? text,
    StateChangeEvent? stateChange,
    NetworkRequest? network,
    PointerTap? tap,
    StorageOperation? storage,
    ExceptionEvent? exception,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (text != null) {
      $result.text = text;
    }
    if (stateChange != null) {
      $result.stateChange = stateChange;
    }
    if (network != null) {
      $result.network = network;
    }
    if (tap != null) {
      $result.tap = tap;
    }
    if (storage != null) {
      $result.storage = storage;
    }
    if (exception != null) {
      $result.exception = exception;
    }
    return $result;
  }
  RegisteredAppEvent._() : super();
  factory RegisteredAppEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisteredAppEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RegisteredAppEvent_Event> _RegisteredAppEvent_EventByTag = {
    3 : RegisteredAppEvent_Event.text,
    4 : RegisteredAppEvent_Event.stateChange,
    5 : RegisteredAppEvent_Event.network,
    6 : RegisteredAppEvent_Event.tap,
    7 : RegisteredAppEvent_Event.storage,
    8 : RegisteredAppEvent_Event.exception,
    0 : RegisteredAppEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisteredAppEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'timestamp')
    ..aOM<TextAppEvent>(3, _omitFieldNames ? '' : 'text', subBuilder: TextAppEvent.create)
    ..aOM<StateChangeEvent>(4, _omitFieldNames ? '' : 'stateChange', protoName: 'stateChange', subBuilder: StateChangeEvent.create)
    ..aOM<NetworkRequest>(5, _omitFieldNames ? '' : 'network', subBuilder: NetworkRequest.create)
    ..aOM<PointerTap>(6, _omitFieldNames ? '' : 'tap', subBuilder: PointerTap.create)
    ..aOM<StorageOperation>(7, _omitFieldNames ? '' : 'storage', subBuilder: StorageOperation.create)
    ..aOM<ExceptionEvent>(8, _omitFieldNames ? '' : 'exception', subBuilder: ExceptionEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisteredAppEvent clone() => RegisteredAppEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisteredAppEvent copyWith(void Function(RegisteredAppEvent) updates) => super.copyWith((message) => updates(message as RegisteredAppEvent)) as RegisteredAppEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisteredAppEvent create() => RegisteredAppEvent._();
  RegisteredAppEvent createEmptyInstance() => create();
  static $pb.PbList<RegisteredAppEvent> createRepeated() => $pb.PbList<RegisteredAppEvent>();
  @$core.pragma('dart2js:noInline')
  static RegisteredAppEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisteredAppEvent>(create);
  static RegisteredAppEvent? _defaultInstance;

  RegisteredAppEvent_Event whichEvent() => _RegisteredAppEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);

  @$pb.TagNumber(3)
  TextAppEvent get text => $_getN(2);
  @$pb.TagNumber(3)
  set text(TextAppEvent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
  @$pb.TagNumber(3)
  TextAppEvent ensureText() => $_ensure(2);

  @$pb.TagNumber(4)
  StateChangeEvent get stateChange => $_getN(3);
  @$pb.TagNumber(4)
  set stateChange(StateChangeEvent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStateChange() => $_has(3);
  @$pb.TagNumber(4)
  void clearStateChange() => clearField(4);
  @$pb.TagNumber(4)
  StateChangeEvent ensureStateChange() => $_ensure(3);

  @$pb.TagNumber(5)
  NetworkRequest get network => $_getN(4);
  @$pb.TagNumber(5)
  set network(NetworkRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNetwork() => $_has(4);
  @$pb.TagNumber(5)
  void clearNetwork() => clearField(5);
  @$pb.TagNumber(5)
  NetworkRequest ensureNetwork() => $_ensure(4);

  @$pb.TagNumber(6)
  PointerTap get tap => $_getN(5);
  @$pb.TagNumber(6)
  set tap(PointerTap v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTap() => $_has(5);
  @$pb.TagNumber(6)
  void clearTap() => clearField(6);
  @$pb.TagNumber(6)
  PointerTap ensureTap() => $_ensure(5);

  @$pb.TagNumber(7)
  StorageOperation get storage => $_getN(6);
  @$pb.TagNumber(7)
  set storage(StorageOperation v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStorage() => $_has(6);
  @$pb.TagNumber(7)
  void clearStorage() => clearField(7);
  @$pb.TagNumber(7)
  StorageOperation ensureStorage() => $_ensure(6);

  @$pb.TagNumber(8)
  ExceptionEvent get exception => $_getN(7);
  @$pb.TagNumber(8)
  set exception(ExceptionEvent v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasException() => $_has(7);
  @$pb.TagNumber(8)
  void clearException() => clearField(8);
  @$pb.TagNumber(8)
  ExceptionEvent ensureException() => $_ensure(7);
}

class TextAppEvent extends $pb.GeneratedMessage {
  factory TextAppEvent({
    $core.String? text,
    $core.Iterable<Trace>? traces,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (traces != null) {
      $result.traces.addAll(traces);
    }
    return $result;
  }
  TextAppEvent._() : super();
  factory TextAppEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TextAppEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TextAppEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..pc<Trace>(2, _omitFieldNames ? '' : 'traces', $pb.PbFieldType.PM, subBuilder: Trace.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TextAppEvent clone() => TextAppEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TextAppEvent copyWith(void Function(TextAppEvent) updates) => super.copyWith((message) => updates(message as TextAppEvent)) as TextAppEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextAppEvent create() => TextAppEvent._();
  TextAppEvent createEmptyInstance() => create();
  static $pb.PbList<TextAppEvent> createRepeated() => $pb.PbList<TextAppEvent>();
  @$core.pragma('dart2js:noInline')
  static TextAppEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextAppEvent>(create);
  static TextAppEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Trace> get traces => $_getList(1);
}

class ExceptionEvent extends $pb.GeneratedMessage {
  factory ExceptionEvent({
    $core.String? exception,
    $core.Iterable<Trace>? traces,
  }) {
    final $result = create();
    if (exception != null) {
      $result.exception = exception;
    }
    if (traces != null) {
      $result.traces.addAll(traces);
    }
    return $result;
  }
  ExceptionEvent._() : super();
  factory ExceptionEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExceptionEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExceptionEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'exception')
    ..pc<Trace>(2, _omitFieldNames ? '' : 'traces', $pb.PbFieldType.PM, subBuilder: Trace.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExceptionEvent clone() => ExceptionEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExceptionEvent copyWith(void Function(ExceptionEvent) updates) => super.copyWith((message) => updates(message as ExceptionEvent)) as ExceptionEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExceptionEvent create() => ExceptionEvent._();
  ExceptionEvent createEmptyInstance() => create();
  static $pb.PbList<ExceptionEvent> createRepeated() => $pb.PbList<ExceptionEvent>();
  @$core.pragma('dart2js:noInline')
  static ExceptionEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExceptionEvent>(create);
  static ExceptionEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get exception => $_getSZ(0);
  @$pb.TagNumber(1)
  set exception($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasException() => $_has(0);
  @$pb.TagNumber(1)
  void clearException() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Trace> get traces => $_getList(1);
}

class Trace extends $pb.GeneratedMessage {
  factory Trace({
    $core.int? line,
    $core.int? column,
    $core.String? function,
    $core.String? path,
  }) {
    final $result = create();
    if (line != null) {
      $result.line = line;
    }
    if (column != null) {
      $result.column = column;
    }
    if (function != null) {
      $result.function = function;
    }
    if (path != null) {
      $result.path = path;
    }
    return $result;
  }
  Trace._() : super();
  factory Trace.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Trace.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Trace', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'line', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'column', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'function')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Trace clone() => Trace()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Trace copyWith(void Function(Trace) updates) => super.copyWith((message) => updates(message as Trace)) as Trace;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Trace create() => Trace._();
  Trace createEmptyInstance() => create();
  static $pb.PbList<Trace> createRepeated() => $pb.PbList<Trace>();
  @$core.pragma('dart2js:noInline')
  static Trace getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trace>(create);
  static Trace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get line => $_getIZ(0);
  @$pb.TagNumber(1)
  set line($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLine() => $_has(0);
  @$pb.TagNumber(1)
  void clearLine() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get column => $_getIZ(1);
  @$pb.TagNumber(2)
  set column($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get function => $_getSZ(2);
  @$pb.TagNumber(3)
  set function($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFunction() => $_has(2);
  @$pb.TagNumber(3)
  void clearFunction() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => clearField(4);
}

class StateChangeEvent extends $pb.GeneratedMessage {
  factory StateChangeEvent({
    $core.String? stateName,
    $core.String? value,
    $core.Iterable<Trace>? traces,
  }) {
    final $result = create();
    if (stateName != null) {
      $result.stateName = stateName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (traces != null) {
      $result.traces.addAll(traces);
    }
    return $result;
  }
  StateChangeEvent._() : super();
  factory StateChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StateChangeEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stateName', protoName: 'stateName')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..pc<Trace>(3, _omitFieldNames ? '' : 'traces', $pb.PbFieldType.PM, subBuilder: Trace.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateChangeEvent clone() => StateChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateChangeEvent copyWith(void Function(StateChangeEvent) updates) => super.copyWith((message) => updates(message as StateChangeEvent)) as StateChangeEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateChangeEvent create() => StateChangeEvent._();
  StateChangeEvent createEmptyInstance() => create();
  static $pb.PbList<StateChangeEvent> createRepeated() => $pb.PbList<StateChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static StateChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateChangeEvent>(create);
  static StateChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stateName => $_getSZ(0);
  @$pb.TagNumber(1)
  set stateName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStateName() => $_has(0);
  @$pb.TagNumber(1)
  void clearStateName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Trace> get traces => $_getList(2);
}

class PointerTap extends $pb.GeneratedMessage {
  factory PointerTap({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  PointerTap._() : super();
  factory PointerTap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointerTap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointerTap', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointerTap clone() => PointerTap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointerTap copyWith(void Function(PointerTap) updates) => super.copyWith((message) => updates(message as PointerTap)) as PointerTap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointerTap create() => PointerTap._();
  PointerTap createEmptyInstance() => create();
  static $pb.PbList<PointerTap> createRepeated() => $pb.PbList<PointerTap>();
  @$core.pragma('dart2js:noInline')
  static PointerTap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointerTap>(create);
  static PointerTap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class StorageOperation extends $pb.GeneratedMessage {
  factory StorageOperation({
    $core.String? key,
    $core.String? value,
    StorageOperationKind? operation,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    return $result;
  }
  StorageOperation._() : super();
  factory StorageOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..e<StorageOperationKind>(3, _omitFieldNames ? '' : 'operation', $pb.PbFieldType.OE, defaultOrMaker: StorageOperationKind.write, valueOf: StorageOperationKind.valueOf, enumValues: StorageOperationKind.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageOperation clone() => StorageOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageOperation copyWith(void Function(StorageOperation) updates) => super.copyWith((message) => updates(message as StorageOperation)) as StorageOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageOperation create() => StorageOperation._();
  StorageOperation createEmptyInstance() => create();
  static $pb.PbList<StorageOperation> createRepeated() => $pb.PbList<StorageOperation>();
  @$core.pragma('dart2js:noInline')
  static StorageOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageOperation>(create);
  static StorageOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  StorageOperationKind get operation => $_getN(2);
  @$pb.TagNumber(3)
  set operation(StorageOperationKind v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperation() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperation() => clearField(3);
}

class NetworkRequest extends $pb.GeneratedMessage {
  factory NetworkRequest({
    $core.String? url,
    $core.Map<$core.String, $core.String>? requestHeaders,
    NetworkCallPayload? requestPayload,
    $core.Map<$core.String, $core.String>? responseHeaders,
    NetworkCallPayload? responsePayload,
    $core.int? statusCode,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (requestHeaders != null) {
      $result.requestHeaders.addAll(requestHeaders);
    }
    if (requestPayload != null) {
      $result.requestPayload = requestPayload;
    }
    if (responseHeaders != null) {
      $result.responseHeaders.addAll(responseHeaders);
    }
    if (responsePayload != null) {
      $result.responsePayload = responsePayload;
    }
    if (statusCode != null) {
      $result.statusCode = statusCode;
    }
    return $result;
  }
  NetworkRequest._() : super();
  factory NetworkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'requestHeaders', protoName: 'requestHeaders', entryClassName: 'NetworkRequest.RequestHeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('eventconsumer'))
    ..aOM<NetworkCallPayload>(3, _omitFieldNames ? '' : 'requestPayload', protoName: 'requestPayload', subBuilder: NetworkCallPayload.create)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'responseHeaders', protoName: 'responseHeaders', entryClassName: 'NetworkRequest.ResponseHeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('eventconsumer'))
    ..aOM<NetworkCallPayload>(5, _omitFieldNames ? '' : 'responsePayload', protoName: 'responsePayload', subBuilder: NetworkCallPayload.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'statusCode', $pb.PbFieldType.O3, protoName: 'statusCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkRequest clone() => NetworkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkRequest copyWith(void Function(NetworkRequest) updates) => super.copyWith((message) => updates(message as NetworkRequest)) as NetworkRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkRequest create() => NetworkRequest._();
  NetworkRequest createEmptyInstance() => create();
  static $pb.PbList<NetworkRequest> createRepeated() => $pb.PbList<NetworkRequest>();
  @$core.pragma('dart2js:noInline')
  static NetworkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkRequest>(create);
  static NetworkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get requestHeaders => $_getMap(1);

  @$pb.TagNumber(3)
  NetworkCallPayload get requestPayload => $_getN(2);
  @$pb.TagNumber(3)
  set requestPayload(NetworkCallPayload v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestPayload() => clearField(3);
  @$pb.TagNumber(3)
  NetworkCallPayload ensureRequestPayload() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get responseHeaders => $_getMap(3);

  @$pb.TagNumber(5)
  NetworkCallPayload get responsePayload => $_getN(4);
  @$pb.TagNumber(5)
  set responsePayload(NetworkCallPayload v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasResponsePayload() => $_has(4);
  @$pb.TagNumber(5)
  void clearResponsePayload() => clearField(5);
  @$pb.TagNumber(5)
  NetworkCallPayload ensureResponsePayload() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get statusCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set statusCode($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatusCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatusCode() => clearField(6);
}

enum NetworkCallPayload_Body {
  form, 
  custom, 
  json, 
  notSet
}

class NetworkCallPayload extends $pb.GeneratedMessage {
  factory NetworkCallPayload({
    FormBody? form,
    $core.String? custom,
    $core.String? json,
  }) {
    final $result = create();
    if (form != null) {
      $result.form = form;
    }
    if (custom != null) {
      $result.custom = custom;
    }
    if (json != null) {
      $result.json = json;
    }
    return $result;
  }
  NetworkCallPayload._() : super();
  factory NetworkCallPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkCallPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, NetworkCallPayload_Body> _NetworkCallPayload_BodyByTag = {
    1 : NetworkCallPayload_Body.form,
    2 : NetworkCallPayload_Body.custom,
    3 : NetworkCallPayload_Body.json,
    0 : NetworkCallPayload_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkCallPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<FormBody>(1, _omitFieldNames ? '' : 'form', subBuilder: FormBody.create)
    ..aOS(2, _omitFieldNames ? '' : 'custom')
    ..aOS(3, _omitFieldNames ? '' : 'json')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkCallPayload clone() => NetworkCallPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkCallPayload copyWith(void Function(NetworkCallPayload) updates) => super.copyWith((message) => updates(message as NetworkCallPayload)) as NetworkCallPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkCallPayload create() => NetworkCallPayload._();
  NetworkCallPayload createEmptyInstance() => create();
  static $pb.PbList<NetworkCallPayload> createRepeated() => $pb.PbList<NetworkCallPayload>();
  @$core.pragma('dart2js:noInline')
  static NetworkCallPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkCallPayload>(create);
  static NetworkCallPayload? _defaultInstance;

  NetworkCallPayload_Body whichBody() => _NetworkCallPayload_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FormBody get form => $_getN(0);
  @$pb.TagNumber(1)
  set form(FormBody v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasForm() => $_has(0);
  @$pb.TagNumber(1)
  void clearForm() => clearField(1);
  @$pb.TagNumber(1)
  FormBody ensureForm() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get custom => $_getSZ(1);
  @$pb.TagNumber(2)
  set custom($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCustom() => $_has(1);
  @$pb.TagNumber(2)
  void clearCustom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get json => $_getSZ(2);
  @$pb.TagNumber(3)
  set json($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJson() => $_has(2);
  @$pb.TagNumber(3)
  void clearJson() => clearField(3);
}

class FormBody extends $pb.GeneratedMessage {
  factory FormBody({
    $core.Map<$core.String, $core.String>? entries,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    return $result;
  }
  FormBody._() : super();
  factory FormBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FormBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FormBody', package: const $pb.PackageName(_omitMessageNames ? '' : 'eventconsumer'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'entries', entryClassName: 'FormBody.EntriesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('eventconsumer'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FormBody clone() => FormBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FormBody copyWith(void Function(FormBody) updates) => super.copyWith((message) => updates(message as FormBody)) as FormBody;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FormBody create() => FormBody._();
  FormBody createEmptyInstance() => create();
  static $pb.PbList<FormBody> createRepeated() => $pb.PbList<FormBody>();
  @$core.pragma('dart2js:noInline')
  static FormBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FormBody>(create);
  static FormBody? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get entries => $_getMap(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
