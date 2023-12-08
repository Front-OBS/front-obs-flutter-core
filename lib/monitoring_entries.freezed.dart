// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_entries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonitoringNetworkCallPayload _$MonitoringNetworkCallPayloadFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'custom':
      return _MonitoringNetworkCallPayloadCustomCtor.fromJson(json);
    case 'json':
      return _MonitoringNetworkCallPayloadJsonCtor.fromJson(json);
    case 'formdata':
      return _MonitoringNetworkCallPayloadFormDataCtor.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'MonitoringNetworkCallPayload',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MonitoringNetworkCallPayload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) custom,
    required TResult Function(String json) json,
    required TResult Function(Map<String, String> data) formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? custom,
    TResult? Function(String json)? json,
    TResult? Function(Map<String, String> data)? formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? custom,
    TResult Function(String json)? json,
    TResult Function(Map<String, String> data)? formdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)
        custom,
    required TResult Function(_MonitoringNetworkCallPayloadJsonCtor value) json,
    required TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)
        formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult? Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult? Function(_MonitoringNetworkCallPayloadFormDataCtor value)?
        formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)? formdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitoringNetworkCallPayloadCopyWith<$Res> {
  factory $MonitoringNetworkCallPayloadCopyWith(
          MonitoringNetworkCallPayload value,
          $Res Function(MonitoringNetworkCallPayload) then) =
      _$MonitoringNetworkCallPayloadCopyWithImpl<$Res,
          MonitoringNetworkCallPayload>;
}

/// @nodoc
class _$MonitoringNetworkCallPayloadCopyWithImpl<$Res,
        $Val extends MonitoringNetworkCallPayload>
    implements $MonitoringNetworkCallPayloadCopyWith<$Res> {
  _$MonitoringNetworkCallPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MonitoringNetworkCallPayloadCustomCtorImplCopyWith<$Res> {
  factory _$$MonitoringNetworkCallPayloadCustomCtorImplCopyWith(
          _$MonitoringNetworkCallPayloadCustomCtorImpl value,
          $Res Function(_$MonitoringNetworkCallPayloadCustomCtorImpl) then) =
      __$$MonitoringNetworkCallPayloadCustomCtorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$MonitoringNetworkCallPayloadCustomCtorImplCopyWithImpl<$Res>
    extends _$MonitoringNetworkCallPayloadCopyWithImpl<$Res,
        _$MonitoringNetworkCallPayloadCustomCtorImpl>
    implements _$$MonitoringNetworkCallPayloadCustomCtorImplCopyWith<$Res> {
  __$$MonitoringNetworkCallPayloadCustomCtorImplCopyWithImpl(
      _$MonitoringNetworkCallPayloadCustomCtorImpl _value,
      $Res Function(_$MonitoringNetworkCallPayloadCustomCtorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$MonitoringNetworkCallPayloadCustomCtorImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonitoringNetworkCallPayloadCustomCtorImpl
    implements _MonitoringNetworkCallPayloadCustomCtor {
  _$MonitoringNetworkCallPayloadCustomCtorImpl(
      {required this.content, final String? $type})
      : $type = $type ?? 'custom';

  factory _$MonitoringNetworkCallPayloadCustomCtorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MonitoringNetworkCallPayloadCustomCtorImplFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MonitoringNetworkCallPayload.custom(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringNetworkCallPayloadCustomCtorImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringNetworkCallPayloadCustomCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadCustomCtorImpl>
      get copyWith =>
          __$$MonitoringNetworkCallPayloadCustomCtorImplCopyWithImpl<
              _$MonitoringNetworkCallPayloadCustomCtorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) custom,
    required TResult Function(String json) json,
    required TResult Function(Map<String, String> data) formdata,
  }) {
    return custom(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? custom,
    TResult? Function(String json)? json,
    TResult? Function(Map<String, String> data)? formdata,
  }) {
    return custom?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? custom,
    TResult Function(String json)? json,
    TResult Function(Map<String, String> data)? formdata,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)
        custom,
    required TResult Function(_MonitoringNetworkCallPayloadJsonCtor value) json,
    required TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)
        formdata,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult? Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult? Function(_MonitoringNetworkCallPayloadFormDataCtor value)?
        formdata,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)? formdata,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonitoringNetworkCallPayloadCustomCtorImplToJson(
      this,
    );
  }
}

abstract class _MonitoringNetworkCallPayloadCustomCtor
    implements MonitoringNetworkCallPayload {
  factory _MonitoringNetworkCallPayloadCustomCtor(
          {required final String content}) =
      _$MonitoringNetworkCallPayloadCustomCtorImpl;

  factory _MonitoringNetworkCallPayloadCustomCtor.fromJson(
          Map<String, dynamic> json) =
      _$MonitoringNetworkCallPayloadCustomCtorImpl.fromJson;

  String get content;
  @JsonKey(ignore: true)
  _$$MonitoringNetworkCallPayloadCustomCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadCustomCtorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringNetworkCallPayloadJsonCtorImplCopyWith<$Res> {
  factory _$$MonitoringNetworkCallPayloadJsonCtorImplCopyWith(
          _$MonitoringNetworkCallPayloadJsonCtorImpl value,
          $Res Function(_$MonitoringNetworkCallPayloadJsonCtorImpl) then) =
      __$$MonitoringNetworkCallPayloadJsonCtorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String json});
}

/// @nodoc
class __$$MonitoringNetworkCallPayloadJsonCtorImplCopyWithImpl<$Res>
    extends _$MonitoringNetworkCallPayloadCopyWithImpl<$Res,
        _$MonitoringNetworkCallPayloadJsonCtorImpl>
    implements _$$MonitoringNetworkCallPayloadJsonCtorImplCopyWith<$Res> {
  __$$MonitoringNetworkCallPayloadJsonCtorImplCopyWithImpl(
      _$MonitoringNetworkCallPayloadJsonCtorImpl _value,
      $Res Function(_$MonitoringNetworkCallPayloadJsonCtorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$MonitoringNetworkCallPayloadJsonCtorImpl(
      json: null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonitoringNetworkCallPayloadJsonCtorImpl
    implements _MonitoringNetworkCallPayloadJsonCtor {
  _$MonitoringNetworkCallPayloadJsonCtorImpl(
      {required this.json, final String? $type})
      : $type = $type ?? 'json';

  factory _$MonitoringNetworkCallPayloadJsonCtorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MonitoringNetworkCallPayloadJsonCtorImplFromJson(json);

  @override
  final String json;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MonitoringNetworkCallPayload.json(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringNetworkCallPayloadJsonCtorImpl &&
            (identical(other.json, json) || other.json == json));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, json);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringNetworkCallPayloadJsonCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadJsonCtorImpl>
      get copyWith => __$$MonitoringNetworkCallPayloadJsonCtorImplCopyWithImpl<
          _$MonitoringNetworkCallPayloadJsonCtorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) custom,
    required TResult Function(String json) json,
    required TResult Function(Map<String, String> data) formdata,
  }) {
    return json(this.json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? custom,
    TResult? Function(String json)? json,
    TResult? Function(Map<String, String> data)? formdata,
  }) {
    return json?.call(this.json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? custom,
    TResult Function(String json)? json,
    TResult Function(Map<String, String> data)? formdata,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this.json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)
        custom,
    required TResult Function(_MonitoringNetworkCallPayloadJsonCtor value) json,
    required TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)
        formdata,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult? Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult? Function(_MonitoringNetworkCallPayloadFormDataCtor value)?
        formdata,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)? formdata,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonitoringNetworkCallPayloadJsonCtorImplToJson(
      this,
    );
  }
}

abstract class _MonitoringNetworkCallPayloadJsonCtor
    implements MonitoringNetworkCallPayload {
  factory _MonitoringNetworkCallPayloadJsonCtor({required final String json}) =
      _$MonitoringNetworkCallPayloadJsonCtorImpl;

  factory _MonitoringNetworkCallPayloadJsonCtor.fromJson(
          Map<String, dynamic> json) =
      _$MonitoringNetworkCallPayloadJsonCtorImpl.fromJson;

  String get json;
  @JsonKey(ignore: true)
  _$$MonitoringNetworkCallPayloadJsonCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadJsonCtorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWith<$Res> {
  factory _$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWith(
          _$MonitoringNetworkCallPayloadFormDataCtorImpl value,
          $Res Function(_$MonitoringNetworkCallPayloadFormDataCtorImpl) then) =
      __$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> data});
}

/// @nodoc
class __$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWithImpl<$Res>
    extends _$MonitoringNetworkCallPayloadCopyWithImpl<$Res,
        _$MonitoringNetworkCallPayloadFormDataCtorImpl>
    implements _$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWith<$Res> {
  __$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWithImpl(
      _$MonitoringNetworkCallPayloadFormDataCtorImpl _value,
      $Res Function(_$MonitoringNetworkCallPayloadFormDataCtorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MonitoringNetworkCallPayloadFormDataCtorImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonitoringNetworkCallPayloadFormDataCtorImpl
    implements _MonitoringNetworkCallPayloadFormDataCtor {
  _$MonitoringNetworkCallPayloadFormDataCtorImpl(
      {required final Map<String, String> data, final String? $type})
      : _data = data,
        $type = $type ?? 'formdata';

  factory _$MonitoringNetworkCallPayloadFormDataCtorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MonitoringNetworkCallPayloadFormDataCtorImplFromJson(json);

  final Map<String, String> _data;
  @override
  Map<String, String> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MonitoringNetworkCallPayload.formdata(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringNetworkCallPayloadFormDataCtorImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadFormDataCtorImpl>
      get copyWith =>
          __$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWithImpl<
              _$MonitoringNetworkCallPayloadFormDataCtorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) custom,
    required TResult Function(String json) json,
    required TResult Function(Map<String, String> data) formdata,
  }) {
    return formdata(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? custom,
    TResult? Function(String json)? json,
    TResult? Function(Map<String, String> data)? formdata,
  }) {
    return formdata?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? custom,
    TResult Function(String json)? json,
    TResult Function(Map<String, String> data)? formdata,
    required TResult orElse(),
  }) {
    if (formdata != null) {
      return formdata(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)
        custom,
    required TResult Function(_MonitoringNetworkCallPayloadJsonCtor value) json,
    required TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)
        formdata,
  }) {
    return formdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult? Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult? Function(_MonitoringNetworkCallPayloadFormDataCtor value)?
        formdata,
  }) {
    return formdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MonitoringNetworkCallPayloadCustomCtor value)? custom,
    TResult Function(_MonitoringNetworkCallPayloadJsonCtor value)? json,
    TResult Function(_MonitoringNetworkCallPayloadFormDataCtor value)? formdata,
    required TResult orElse(),
  }) {
    if (formdata != null) {
      return formdata(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonitoringNetworkCallPayloadFormDataCtorImplToJson(
      this,
    );
  }
}

abstract class _MonitoringNetworkCallPayloadFormDataCtor
    implements MonitoringNetworkCallPayload {
  factory _MonitoringNetworkCallPayloadFormDataCtor(
          {required final Map<String, String> data}) =
      _$MonitoringNetworkCallPayloadFormDataCtorImpl;

  factory _MonitoringNetworkCallPayloadFormDataCtor.fromJson(
          Map<String, dynamic> json) =
      _$MonitoringNetworkCallPayloadFormDataCtorImpl.fromJson;

  Map<String, String> get data;
  @JsonKey(ignore: true)
  _$$MonitoringNetworkCallPayloadFormDataCtorImplCopyWith<
          _$MonitoringNetworkCallPayloadFormDataCtorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StackFrame _$StackFrameFromJson(Map<String, dynamic> json) {
  return _StackFrameCtor.fromJson(json);
}

/// @nodoc
mixin _$StackFrame {
  String? get funcName => throw _privateConstructorUsedError;
  int? get line => throw _privateConstructorUsedError;
  int? get column => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StackFrameCopyWith<StackFrame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StackFrameCopyWith<$Res> {
  factory $StackFrameCopyWith(
          StackFrame value, $Res Function(StackFrame) then) =
      _$StackFrameCopyWithImpl<$Res, StackFrame>;
  @useResult
  $Res call({String? funcName, int? line, int? column, String path});
}

/// @nodoc
class _$StackFrameCopyWithImpl<$Res, $Val extends StackFrame>
    implements $StackFrameCopyWith<$Res> {
  _$StackFrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? funcName = freezed,
    Object? line = freezed,
    Object? column = freezed,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      funcName: freezed == funcName
          ? _value.funcName
          : funcName // ignore: cast_nullable_to_non_nullable
              as String?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StackFrameCtorImplCopyWith<$Res>
    implements $StackFrameCopyWith<$Res> {
  factory _$$StackFrameCtorImplCopyWith(_$StackFrameCtorImpl value,
          $Res Function(_$StackFrameCtorImpl) then) =
      __$$StackFrameCtorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? funcName, int? line, int? column, String path});
}

/// @nodoc
class __$$StackFrameCtorImplCopyWithImpl<$Res>
    extends _$StackFrameCopyWithImpl<$Res, _$StackFrameCtorImpl>
    implements _$$StackFrameCtorImplCopyWith<$Res> {
  __$$StackFrameCtorImplCopyWithImpl(
      _$StackFrameCtorImpl _value, $Res Function(_$StackFrameCtorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? funcName = freezed,
    Object? line = freezed,
    Object? column = freezed,
    Object? path = null,
  }) {
    return _then(_$StackFrameCtorImpl(
      funcName: freezed == funcName
          ? _value.funcName
          : funcName // ignore: cast_nullable_to_non_nullable
              as String?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StackFrameCtorImpl extends _StackFrameCtor {
  _$StackFrameCtorImpl(
      {required this.funcName,
      required this.line,
      required this.column,
      required this.path})
      : super._();

  factory _$StackFrameCtorImpl.fromJson(Map<String, dynamic> json) =>
      _$$StackFrameCtorImplFromJson(json);

  @override
  final String? funcName;
  @override
  final int? line;
  @override
  final int? column;
  @override
  final String path;

  @override
  String toString() {
    return 'StackFrame(funcName: $funcName, line: $line, column: $column, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StackFrameCtorImpl &&
            (identical(other.funcName, funcName) ||
                other.funcName == funcName) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, funcName, line, column, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StackFrameCtorImplCopyWith<_$StackFrameCtorImpl> get copyWith =>
      __$$StackFrameCtorImplCopyWithImpl<_$StackFrameCtorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StackFrameCtorImplToJson(
      this,
    );
  }
}

abstract class _StackFrameCtor extends StackFrame {
  factory _StackFrameCtor(
      {required final String? funcName,
      required final int? line,
      required final int? column,
      required final String path}) = _$StackFrameCtorImpl;
  _StackFrameCtor._() : super._();

  factory _StackFrameCtor.fromJson(Map<String, dynamic> json) =
      _$StackFrameCtorImpl.fromJson;

  @override
  String? get funcName;
  @override
  int? get line;
  @override
  int? get column;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$StackFrameCtorImplCopyWith<_$StackFrameCtorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MonitoringEntry {
  Uint8List? get screenshot => throw _privateConstructorUsedError;
  set screenshot(Uint8List? value) => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  set scope(String value) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonitoringEntryCopyWith<MonitoringEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitoringEntryCopyWith<$Res> {
  factory $MonitoringEntryCopyWith(
          MonitoringEntry value, $Res Function(MonitoringEntry) then) =
      _$MonitoringEntryCopyWithImpl<$Res, MonitoringEntry>;
  @useResult
  $Res call({Uint8List? screenshot, String scope});
}

/// @nodoc
class _$MonitoringEntryCopyWithImpl<$Res, $Val extends MonitoringEntry>
    implements $MonitoringEntryCopyWith<$Res> {
  _$MonitoringEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
  }) {
    return _then(_value.copyWith(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonitoringEntryNetworkCallImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryNetworkCallImplCopyWith(
          _$MonitoringEntryNetworkCallImpl value,
          $Res Function(_$MonitoringEntryNetworkCallImpl) then) =
      __$$MonitoringEntryNetworkCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String uri,
      String id,
      @DateTimeConverter() DateTime logTimestamp,
      @DateTimeConverter() DateTime start,
      Map<String, String> requestQuery,
      MonitoringNetworkCallPayload request,
      Map<String, String> requestHeaders,
      DateTime? end,
      int statusCode,
      Map<String, String>? responseHeaders,
      MonitoringNetworkCallPayload? response});

  $MonitoringNetworkCallPayloadCopyWith<$Res> get request;
  $MonitoringNetworkCallPayloadCopyWith<$Res>? get response;
}

/// @nodoc
class __$$MonitoringEntryNetworkCallImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res,
        _$MonitoringEntryNetworkCallImpl>
    implements _$$MonitoringEntryNetworkCallImplCopyWith<$Res> {
  __$$MonitoringEntryNetworkCallImplCopyWithImpl(
      _$MonitoringEntryNetworkCallImpl _value,
      $Res Function(_$MonitoringEntryNetworkCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? uri = null,
    Object? id = null,
    Object? logTimestamp = null,
    Object? start = null,
    Object? requestQuery = null,
    Object? request = null,
    Object? requestHeaders = null,
    Object? end = freezed,
    Object? statusCode = null,
    Object? responseHeaders = freezed,
    Object? response = freezed,
  }) {
    return _then(_$MonitoringEntryNetworkCallImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestQuery: null == requestQuery
          ? _value.requestQuery
          : requestQuery // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as MonitoringNetworkCallPayload,
      requestHeaders: null == requestHeaders
          ? _value.requestHeaders
          : requestHeaders // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      responseHeaders: freezed == responseHeaders
          ? _value.responseHeaders
          : responseHeaders // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MonitoringNetworkCallPayload?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MonitoringNetworkCallPayloadCopyWith<$Res> get request {
    return $MonitoringNetworkCallPayloadCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MonitoringNetworkCallPayloadCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $MonitoringNetworkCallPayloadCopyWith<$Res>(_value.response!,
        (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$MonitoringEntryNetworkCallImpl extends MonitoringEntryNetworkCall {
  _$MonitoringEntryNetworkCallImpl(
      {this.screenshot,
      required this.scope,
      required this.uri,
      required this.id,
      @DateTimeConverter() required this.logTimestamp,
      @DateTimeConverter() required this.start,
      required this.requestQuery,
      required this.request,
      required this.requestHeaders,
      this.end,
      required this.statusCode,
      this.responseHeaders,
      required this.response})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String uri;
  @override
  String id;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;
  @override
  @DateTimeConverter()
  DateTime start;
  @override
  Map<String, String> requestQuery;
  @override
  MonitoringNetworkCallPayload request;
  @override
  Map<String, String> requestHeaders;
  @override
  DateTime? end;
  @override
  int statusCode;
  @override
  Map<String, String>? responseHeaders;
  @override
  MonitoringNetworkCallPayload? response;

  @override
  String toString() {
    return 'MonitoringEntry.networkCall(screenshot: $screenshot, scope: $scope, uri: $uri, id: $id, logTimestamp: $logTimestamp, start: $start, requestQuery: $requestQuery, request: $request, requestHeaders: $requestHeaders, end: $end, statusCode: $statusCode, responseHeaders: $responseHeaders, response: $response)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryNetworkCallImplCopyWith<_$MonitoringEntryNetworkCallImpl>
      get copyWith => __$$MonitoringEntryNetworkCallImplCopyWithImpl<
          _$MonitoringEntryNetworkCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return networkCall(
        screenshot,
        scope,
        uri,
        id,
        logTimestamp,
        start,
        requestQuery,
        request,
        requestHeaders,
        end,
        statusCode,
        responseHeaders,
        response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return networkCall?.call(
        screenshot,
        scope,
        uri,
        id,
        logTimestamp,
        start,
        requestQuery,
        request,
        requestHeaders,
        end,
        statusCode,
        responseHeaders,
        response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (networkCall != null) {
      return networkCall(
          screenshot,
          scope,
          uri,
          id,
          logTimestamp,
          start,
          requestQuery,
          request,
          requestHeaders,
          end,
          statusCode,
          responseHeaders,
          response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return networkCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return networkCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (networkCall != null) {
      return networkCall(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryNetworkCall extends MonitoringEntry {
  factory MonitoringEntryNetworkCall(
          {Uint8List? screenshot,
          required String scope,
          required String uri,
          required String id,
          @DateTimeConverter() required DateTime logTimestamp,
          @DateTimeConverter() required DateTime start,
          required Map<String, String> requestQuery,
          required MonitoringNetworkCallPayload request,
          required Map<String, String> requestHeaders,
          DateTime? end,
          required int statusCode,
          Map<String, String>? responseHeaders,
          required MonitoringNetworkCallPayload? response}) =
      _$MonitoringEntryNetworkCallImpl;
  MonitoringEntryNetworkCall._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get uri;
  set uri(String value);
  String get id;
  set id(String value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @DateTimeConverter()
  DateTime get start;
  @DateTimeConverter()
  set start(DateTime value);
  Map<String, String> get requestQuery;
  set requestQuery(Map<String, String> value);
  MonitoringNetworkCallPayload get request;
  set request(MonitoringNetworkCallPayload value);
  Map<String, String> get requestHeaders;
  set requestHeaders(Map<String, String> value);
  DateTime? get end;
  set end(DateTime? value);
  int get statusCode;
  set statusCode(int value);
  Map<String, String>? get responseHeaders;
  set responseHeaders(Map<String, String>? value);
  MonitoringNetworkCallPayload? get response;
  set response(MonitoringNetworkCallPayload? value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryNetworkCallImplCopyWith<_$MonitoringEntryNetworkCallImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryStarageOperationImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryStarageOperationImplCopyWith(
          _$MonitoringEntryStarageOperationImpl value,
          $Res Function(_$MonitoringEntryStarageOperationImpl) then) =
      __$$MonitoringEntryStarageOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      StarageOperationType storage,
      String storageName,
      String key,
      String value,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryStarageOperationImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res,
        _$MonitoringEntryStarageOperationImpl>
    implements _$$MonitoringEntryStarageOperationImplCopyWith<$Res> {
  __$$MonitoringEntryStarageOperationImplCopyWithImpl(
      _$MonitoringEntryStarageOperationImpl _value,
      $Res Function(_$MonitoringEntryStarageOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? storage = null,
    Object? storageName = null,
    Object? key = null,
    Object? value = null,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryStarageOperationImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StarageOperationType,
      storageName: null == storageName
          ? _value.storageName
          : storageName // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryStarageOperationImpl
    extends MonitoringEntryStarageOperation {
  _$MonitoringEntryStarageOperationImpl(
      {this.screenshot,
      required this.scope,
      required this.storage,
      required this.storageName,
      required this.key,
      required this.value,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  StarageOperationType storage;
  @override
  String storageName;
  @override
  String key;
  @override
  String value;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.storageOperation(screenshot: $screenshot, scope: $scope, storage: $storage, storageName: $storageName, key: $key, value: $value, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryStarageOperationImplCopyWith<
          _$MonitoringEntryStarageOperationImpl>
      get copyWith => __$$MonitoringEntryStarageOperationImplCopyWithImpl<
          _$MonitoringEntryStarageOperationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return storageOperation(
        screenshot, scope, storage, storageName, key, value, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return storageOperation?.call(
        screenshot, scope, storage, storageName, key, value, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (storageOperation != null) {
      return storageOperation(
          screenshot, scope, storage, storageName, key, value, logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return storageOperation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return storageOperation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (storageOperation != null) {
      return storageOperation(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryStarageOperation extends MonitoringEntry {
  factory MonitoringEntryStarageOperation(
          {Uint8List? screenshot,
          required String scope,
          required StarageOperationType storage,
          required String storageName,
          required String key,
          required String value,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryStarageOperationImpl;
  MonitoringEntryStarageOperation._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  StarageOperationType get storage;
  set storage(StarageOperationType value);
  String get storageName;
  set storageName(String value);
  String get key;
  set key(String value);
  String get value;
  set value(String value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryStarageOperationImplCopyWith<
          _$MonitoringEntryStarageOperationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryExceptionImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryExceptionImplCopyWith(
          _$MonitoringEntryExceptionImpl value,
          $Res Function(_$MonitoringEntryExceptionImpl) then) =
      __$$MonitoringEntryExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String text,
      List<StackFrame> frames});
}

/// @nodoc
class __$$MonitoringEntryExceptionImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res, _$MonitoringEntryExceptionImpl>
    implements _$$MonitoringEntryExceptionImplCopyWith<$Res> {
  __$$MonitoringEntryExceptionImplCopyWithImpl(
      _$MonitoringEntryExceptionImpl _value,
      $Res Function(_$MonitoringEntryExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? text = null,
    Object? frames = null,
  }) {
    return _then(_$MonitoringEntryExceptionImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<StackFrame>,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryExceptionImpl extends MonitoringEntryException {
  _$MonitoringEntryExceptionImpl(
      {this.screenshot,
      required this.scope,
      required this.text,
      required this.frames})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String text;
  @override
  List<StackFrame> frames;

  @override
  String toString() {
    return 'MonitoringEntry.exception(screenshot: $screenshot, scope: $scope, text: $text, frames: $frames)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryExceptionImplCopyWith<_$MonitoringEntryExceptionImpl>
      get copyWith => __$$MonitoringEntryExceptionImplCopyWithImpl<
          _$MonitoringEntryExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return exception(screenshot, scope, text, frames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return exception?.call(screenshot, scope, text, frames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(screenshot, scope, text, frames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryException extends MonitoringEntry {
  factory MonitoringEntryException(
      {Uint8List? screenshot,
      required String scope,
      required String text,
      required List<StackFrame> frames}) = _$MonitoringEntryExceptionImpl;
  MonitoringEntryException._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get text;
  set text(String value);
  List<StackFrame> get frames;
  set frames(List<StackFrame> value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryExceptionImplCopyWith<_$MonitoringEntryExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryTextLogImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryTextLogImplCopyWith(
          _$MonitoringEntryTextLogImpl value,
          $Res Function(_$MonitoringEntryTextLogImpl) then) =
      __$$MonitoringEntryTextLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String event,
      String? payload,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryTextLogImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res, _$MonitoringEntryTextLogImpl>
    implements _$$MonitoringEntryTextLogImplCopyWith<$Res> {
  __$$MonitoringEntryTextLogImplCopyWithImpl(
      _$MonitoringEntryTextLogImpl _value,
      $Res Function(_$MonitoringEntryTextLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? event = null,
    Object? payload = freezed,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryTextLogImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryTextLogImpl extends MonitoringEntryTextLog {
  _$MonitoringEntryTextLogImpl(
      {this.screenshot,
      required this.scope,
      required this.event,
      required this.payload,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String event;
  @override
  String? payload;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.event(screenshot: $screenshot, scope: $scope, event: $event, payload: $payload, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryTextLogImplCopyWith<_$MonitoringEntryTextLogImpl>
      get copyWith => __$$MonitoringEntryTextLogImplCopyWithImpl<
          _$MonitoringEntryTextLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return event(screenshot, scope, this.event, payload, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return event?.call(screenshot, scope, this.event, payload, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(screenshot, scope, this.event, payload, logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryTextLog extends MonitoringEntry {
  factory MonitoringEntryTextLog(
          {Uint8List? screenshot,
          required String scope,
          required String event,
          required String? payload,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryTextLogImpl;
  MonitoringEntryTextLog._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get event;
  set event(String value);
  String? get payload;
  set payload(String? value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryTextLogImplCopyWith<_$MonitoringEntryTextLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryStateLogImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryStateLogImplCopyWith(
          _$MonitoringEntryStateLogImpl value,
          $Res Function(_$MonitoringEntryStateLogImpl) then) =
      __$$MonitoringEntryStateLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String payload,
      String key,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryStateLogImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res, _$MonitoringEntryStateLogImpl>
    implements _$$MonitoringEntryStateLogImplCopyWith<$Res> {
  __$$MonitoringEntryStateLogImplCopyWithImpl(
      _$MonitoringEntryStateLogImpl _value,
      $Res Function(_$MonitoringEntryStateLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? payload = null,
    Object? key = null,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryStateLogImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryStateLogImpl extends MonitoringEntryStateLog {
  _$MonitoringEntryStateLogImpl(
      {this.screenshot,
      required this.scope,
      required this.payload,
      required this.key,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String payload;
  @override
  String key;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.stateChange(screenshot: $screenshot, scope: $scope, payload: $payload, key: $key, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryStateLogImplCopyWith<_$MonitoringEntryStateLogImpl>
      get copyWith => __$$MonitoringEntryStateLogImplCopyWithImpl<
          _$MonitoringEntryStateLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return stateChange(screenshot, scope, payload, key, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return stateChange?.call(screenshot, scope, payload, key, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (stateChange != null) {
      return stateChange(screenshot, scope, payload, key, logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return stateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return stateChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (stateChange != null) {
      return stateChange(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryStateLog extends MonitoringEntry {
  factory MonitoringEntryStateLog(
          {Uint8List? screenshot,
          required String scope,
          required String payload,
          required String key,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryStateLogImpl;
  MonitoringEntryStateLog._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get payload;
  set payload(String value);
  String get key;
  set key(String value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryStateLogImplCopyWith<_$MonitoringEntryStateLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryTapEventLogImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryTapEventLogImplCopyWith(
          _$MonitoringEntryTapEventLogImpl value,
          $Res Function(_$MonitoringEntryTapEventLogImpl) then) =
      __$$MonitoringEntryTapEventLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String identification,
      String? payload,
      double coordX,
      double coordY,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryTapEventLogImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res,
        _$MonitoringEntryTapEventLogImpl>
    implements _$$MonitoringEntryTapEventLogImplCopyWith<$Res> {
  __$$MonitoringEntryTapEventLogImplCopyWithImpl(
      _$MonitoringEntryTapEventLogImpl _value,
      $Res Function(_$MonitoringEntryTapEventLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? identification = null,
    Object? payload = freezed,
    Object? coordX = null,
    Object? coordY = null,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryTapEventLogImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      identification: null == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
      coordX: null == coordX
          ? _value.coordX
          : coordX // ignore: cast_nullable_to_non_nullable
              as double,
      coordY: null == coordY
          ? _value.coordY
          : coordY // ignore: cast_nullable_to_non_nullable
              as double,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryTapEventLogImpl extends MonitoringEntryTapEventLog {
  _$MonitoringEntryTapEventLogImpl(
      {this.screenshot,
      required this.scope,
      required this.identification,
      required this.payload,
      required this.coordX,
      required this.coordY,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String identification;
  @override
  String? payload;
  @override
  double coordX;
  @override
  double coordY;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.tapEvent(screenshot: $screenshot, scope: $scope, identification: $identification, payload: $payload, coordX: $coordX, coordY: $coordY, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryTapEventLogImplCopyWith<_$MonitoringEntryTapEventLogImpl>
      get copyWith => __$$MonitoringEntryTapEventLogImplCopyWithImpl<
          _$MonitoringEntryTapEventLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return tapEvent(screenshot, scope, identification, payload, coordX, coordY,
        logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return tapEvent?.call(screenshot, scope, identification, payload, coordX,
        coordY, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (tapEvent != null) {
      return tapEvent(screenshot, scope, identification, payload, coordX,
          coordY, logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return tapEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return tapEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (tapEvent != null) {
      return tapEvent(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryTapEventLog extends MonitoringEntry {
  factory MonitoringEntryTapEventLog(
          {Uint8List? screenshot,
          required String scope,
          required String identification,
          required String? payload,
          required double coordX,
          required double coordY,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryTapEventLogImpl;
  MonitoringEntryTapEventLog._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get identification;
  set identification(String value);
  String? get payload;
  set payload(String? value);
  double get coordX;
  set coordX(double value);
  double get coordY;
  set coordY(double value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryTapEventLogImplCopyWith<_$MonitoringEntryTapEventLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryScrollEventLogImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryScrollEventLogImplCopyWith(
          _$MonitoringEntryScrollEventLogImpl value,
          $Res Function(_$MonitoringEntryScrollEventLogImpl) then) =
      __$$MonitoringEntryScrollEventLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String identification,
      String? payload,
      double offsetFrom,
      double offsetTo,
      double viewport,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryScrollEventLogImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res,
        _$MonitoringEntryScrollEventLogImpl>
    implements _$$MonitoringEntryScrollEventLogImplCopyWith<$Res> {
  __$$MonitoringEntryScrollEventLogImplCopyWithImpl(
      _$MonitoringEntryScrollEventLogImpl _value,
      $Res Function(_$MonitoringEntryScrollEventLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? identification = null,
    Object? payload = freezed,
    Object? offsetFrom = null,
    Object? offsetTo = null,
    Object? viewport = null,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryScrollEventLogImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      identification: null == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
      offsetFrom: null == offsetFrom
          ? _value.offsetFrom
          : offsetFrom // ignore: cast_nullable_to_non_nullable
              as double,
      offsetTo: null == offsetTo
          ? _value.offsetTo
          : offsetTo // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as double,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryScrollEventLogImpl
    extends MonitoringEntryScrollEventLog {
  _$MonitoringEntryScrollEventLogImpl(
      {this.screenshot,
      required this.scope,
      required this.identification,
      required this.payload,
      required this.offsetFrom,
      required this.offsetTo,
      required this.viewport,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String identification;
  @override
  String? payload;
  @override
  double offsetFrom;
  @override
  double offsetTo;
  @override
  double viewport;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.scrollEvent(screenshot: $screenshot, scope: $scope, identification: $identification, payload: $payload, offsetFrom: $offsetFrom, offsetTo: $offsetTo, viewport: $viewport, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryScrollEventLogImplCopyWith<
          _$MonitoringEntryScrollEventLogImpl>
      get copyWith => __$$MonitoringEntryScrollEventLogImplCopyWithImpl<
          _$MonitoringEntryScrollEventLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return scrollEvent(screenshot, scope, identification, payload, offsetFrom,
        offsetTo, viewport, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return scrollEvent?.call(screenshot, scope, identification, payload,
        offsetFrom, offsetTo, viewport, logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (scrollEvent != null) {
      return scrollEvent(screenshot, scope, identification, payload, offsetFrom,
          offsetTo, viewport, logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return scrollEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return scrollEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (scrollEvent != null) {
      return scrollEvent(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryScrollEventLog extends MonitoringEntry {
  factory MonitoringEntryScrollEventLog(
          {Uint8List? screenshot,
          required String scope,
          required String identification,
          required String? payload,
          required double offsetFrom,
          required double offsetTo,
          required double viewport,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryScrollEventLogImpl;
  MonitoringEntryScrollEventLog._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get identification;
  set identification(String value);
  String? get payload;
  set payload(String? value);
  double get offsetFrom;
  set offsetFrom(double value);
  double get offsetTo;
  set offsetTo(double value);
  double get viewport;
  set viewport(double value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryScrollEventLogImplCopyWith<
          _$MonitoringEntryScrollEventLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringEntryNavigationEventLogImplCopyWith<$Res>
    implements $MonitoringEntryCopyWith<$Res> {
  factory _$$MonitoringEntryNavigationEventLogImplCopyWith(
          _$MonitoringEntryNavigationEventLogImpl value,
          $Res Function(_$MonitoringEntryNavigationEventLogImpl) then) =
      __$$MonitoringEntryNavigationEventLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String type,
      String routeName,
      String? previousRouteName,
      String? arguments,
      String? previousArguments,
      String? popResult,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$MonitoringEntryNavigationEventLogImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res,
        _$MonitoringEntryNavigationEventLogImpl>
    implements _$$MonitoringEntryNavigationEventLogImplCopyWith<$Res> {
  __$$MonitoringEntryNavigationEventLogImplCopyWithImpl(
      _$MonitoringEntryNavigationEventLogImpl _value,
      $Res Function(_$MonitoringEntryNavigationEventLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? type = null,
    Object? routeName = null,
    Object? previousRouteName = freezed,
    Object? arguments = freezed,
    Object? previousArguments = freezed,
    Object? popResult = freezed,
    Object? logTimestamp = null,
  }) {
    return _then(_$MonitoringEntryNavigationEventLogImpl(
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      previousRouteName: freezed == previousRouteName
          ? _value.previousRouteName
          : previousRouteName // ignore: cast_nullable_to_non_nullable
              as String?,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as String?,
      previousArguments: freezed == previousArguments
          ? _value.previousArguments
          : previousArguments // ignore: cast_nullable_to_non_nullable
              as String?,
      popResult: freezed == popResult
          ? _value.popResult
          : popResult // ignore: cast_nullable_to_non_nullable
              as String?,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MonitoringEntryNavigationEventLogImpl
    extends MonitoringEntryNavigationEventLog {
  _$MonitoringEntryNavigationEventLogImpl(
      {this.screenshot,
      required this.scope,
      required this.type,
      required this.routeName,
      required this.previousRouteName,
      required this.arguments,
      required this.previousArguments,
      required this.popResult,
      @DateTimeConverter() required this.logTimestamp})
      : super._();

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String type;
  @override
  String routeName;
  @override
  String? previousRouteName;
  @override
  String? arguments;
  @override
  String? previousArguments;
  @override
  String? popResult;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry.navigationEvent(screenshot: $screenshot, scope: $scope, type: $type, routeName: $routeName, previousRouteName: $previousRouteName, arguments: $arguments, previousArguments: $previousArguments, popResult: $popResult, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringEntryNavigationEventLogImplCopyWith<
          _$MonitoringEntryNavigationEventLogImpl>
      get copyWith => __$$MonitoringEntryNavigationEventLogImplCopyWithImpl<
          _$MonitoringEntryNavigationEventLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)
        networkCall,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)
        storageOperation,
    required TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)
        exception,
    required TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)
        event,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String payload,
            String key,
            @DateTimeConverter() DateTime logTimestamp)
        stateChange,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)
        tapEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)
        scrollEvent,
    required TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)
        navigationEvent,
  }) {
    return navigationEvent(
        screenshot,
        scope,
        type,
        routeName,
        previousRouteName,
        arguments,
        previousArguments,
        popResult,
        logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult? Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult? Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult? Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult? Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
  }) {
    return navigationEvent?.call(
        screenshot,
        scope,
        type,
        routeName,
        previousRouteName,
        arguments,
        previousArguments,
        popResult,
        logTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String uri,
            String id,
            @DateTimeConverter() DateTime logTimestamp,
            @DateTimeConverter() DateTime start,
            Map<String, String> requestQuery,
            MonitoringNetworkCallPayload request,
            Map<String, String> requestHeaders,
            DateTime? end,
            int statusCode,
            Map<String, String>? responseHeaders,
            MonitoringNetworkCallPayload? response)?
        networkCall,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            StarageOperationType storage,
            String storageName,
            String key,
            String value,
            @DateTimeConverter() DateTime logTimestamp)?
        storageOperation,
    TResult Function(Uint8List? screenshot, String scope, String text,
            List<StackFrame> frames)?
        exception,
    TResult Function(Uint8List? screenshot, String scope, String event,
            String? payload, @DateTimeConverter() DateTime logTimestamp)?
        event,
    TResult Function(Uint8List? screenshot, String scope, String payload,
            String key, @DateTimeConverter() DateTime logTimestamp)?
        stateChange,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double coordX,
            double coordY,
            @DateTimeConverter() DateTime logTimestamp)?
        tapEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String identification,
            String? payload,
            double offsetFrom,
            double offsetTo,
            double viewport,
            @DateTimeConverter() DateTime logTimestamp)?
        scrollEvent,
    TResult Function(
            Uint8List? screenshot,
            String scope,
            String type,
            String routeName,
            String? previousRouteName,
            String? arguments,
            String? previousArguments,
            String? popResult,
            @DateTimeConverter() DateTime logTimestamp)?
        navigationEvent,
    required TResult orElse(),
  }) {
    if (navigationEvent != null) {
      return navigationEvent(
          screenshot,
          scope,
          type,
          routeName,
          previousRouteName,
          arguments,
          previousArguments,
          popResult,
          logTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringEntryNetworkCall value) networkCall,
    required TResult Function(MonitoringEntryStarageOperation value)
        storageOperation,
    required TResult Function(MonitoringEntryException value) exception,
    required TResult Function(MonitoringEntryTextLog value) event,
    required TResult Function(MonitoringEntryStateLog value) stateChange,
    required TResult Function(MonitoringEntryTapEventLog value) tapEvent,
    required TResult Function(MonitoringEntryScrollEventLog value) scrollEvent,
    required TResult Function(MonitoringEntryNavigationEventLog value)
        navigationEvent,
  }) {
    return navigationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult? Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult? Function(MonitoringEntryException value)? exception,
    TResult? Function(MonitoringEntryTextLog value)? event,
    TResult? Function(MonitoringEntryStateLog value)? stateChange,
    TResult? Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult? Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult? Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
  }) {
    return navigationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringEntryNetworkCall value)? networkCall,
    TResult Function(MonitoringEntryStarageOperation value)? storageOperation,
    TResult Function(MonitoringEntryException value)? exception,
    TResult Function(MonitoringEntryTextLog value)? event,
    TResult Function(MonitoringEntryStateLog value)? stateChange,
    TResult Function(MonitoringEntryTapEventLog value)? tapEvent,
    TResult Function(MonitoringEntryScrollEventLog value)? scrollEvent,
    TResult Function(MonitoringEntryNavigationEventLog value)? navigationEvent,
    required TResult orElse(),
  }) {
    if (navigationEvent != null) {
      return navigationEvent(this);
    }
    return orElse();
  }
}

abstract class MonitoringEntryNavigationEventLog extends MonitoringEntry {
  factory MonitoringEntryNavigationEventLog(
          {Uint8List? screenshot,
          required String scope,
          required String type,
          required String routeName,
          required String? previousRouteName,
          required String? arguments,
          required String? previousArguments,
          required String? popResult,
          @DateTimeConverter() required DateTime logTimestamp}) =
      _$MonitoringEntryNavigationEventLogImpl;
  MonitoringEntryNavigationEventLog._() : super._();

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  String get type;
  set type(String value);
  String get routeName;
  set routeName(String value);
  String? get previousRouteName;
  set previousRouteName(String? value);
  String? get arguments;
  set arguments(String? value);
  String? get previousArguments;
  set previousArguments(String? value);
  String? get popResult;
  set popResult(String? value);
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$MonitoringEntryNavigationEventLogImplCopyWith<
          _$MonitoringEntryNavigationEventLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}
