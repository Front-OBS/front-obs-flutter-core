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
  String get identification => throw _privateConstructorUsedError;
  set identification(String value) => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  set kind(String value) => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  set severity(String value) => throw _privateConstructorUsedError;
  Map<String, dynamic>? get payload => throw _privateConstructorUsedError;
  set payload(Map<String, dynamic>? value) =>
      throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get logTimestamp => throw _privateConstructorUsedError;
  @DateTimeConverter()
  set logTimestamp(DateTime value) => throw _privateConstructorUsedError;

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
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String identification,
      String kind,
      String severity,
      Map<String, dynamic>? payload,
      @DateTimeConverter() DateTime logTimestamp});
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
    Object? identification = null,
    Object? kind = null,
    Object? severity = null,
    Object? payload = freezed,
    Object? logTimestamp = null,
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
      identification: null == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplCopyWith<$Res> implements $MonitoringEntryCopyWith<$Res> {
  factory _$$ImplCopyWith(_$Impl value, $Res Function(_$Impl) then) =
      __$$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? screenshot,
      String scope,
      String identification,
      String kind,
      String severity,
      Map<String, dynamic>? payload,
      @DateTimeConverter() DateTime logTimestamp});
}

/// @nodoc
class __$$ImplCopyWithImpl<$Res>
    extends _$MonitoringEntryCopyWithImpl<$Res, _$Impl>
    implements _$$ImplCopyWith<$Res> {
  __$$ImplCopyWithImpl(_$Impl _value, $Res Function(_$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenshot = freezed,
    Object? scope = null,
    Object? identification = null,
    Object? kind = null,
    Object? severity = null,
    Object? payload = freezed,
    Object? logTimestamp = null,
  }) {
    return _then(_$Impl(
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
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      logTimestamp: null == logTimestamp
          ? _value.logTimestamp
          : logTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Impl implements _ {
  _$Impl(
      {this.screenshot,
      required this.scope,
      required this.identification,
      required this.kind,
      required this.severity,
      required this.payload,
      @DateTimeConverter() required this.logTimestamp});

  @override
  Uint8List? screenshot;
  @override
  String scope;
  @override
  String identification;
  @override
  String kind;
  @override
  String severity;
  @override
  Map<String, dynamic>? payload;
  @override
  @DateTimeConverter()
  DateTime logTimestamp;

  @override
  String toString() {
    return 'MonitoringEntry(screenshot: $screenshot, scope: $scope, identification: $identification, kind: $kind, severity: $severity, payload: $payload, logTimestamp: $logTimestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplCopyWith<_$Impl> get copyWith =>
      __$$ImplCopyWithImpl<_$Impl>(this, _$identity);
}

abstract class _ implements MonitoringEntry {
  factory _(
      {Uint8List? screenshot,
      required String scope,
      required String identification,
      required String kind,
      required String severity,
      required Map<String, dynamic>? payload,
      @DateTimeConverter() required DateTime logTimestamp}) = _$Impl;

  @override
  Uint8List? get screenshot;
  set screenshot(Uint8List? value);
  @override
  String get scope;
  set scope(String value);
  @override
  String get identification;
  set identification(String value);
  @override
  String get kind;
  set kind(String value);
  @override
  String get severity;
  set severity(String value);
  @override
  Map<String, dynamic>? get payload;
  set payload(Map<String, dynamic>? value);
  @override
  @DateTimeConverter()
  DateTime get logTimestamp;
  @DateTimeConverter()
  set logTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$ImplCopyWith<_$Impl> get copyWith => throw _privateConstructorUsedError;
}
