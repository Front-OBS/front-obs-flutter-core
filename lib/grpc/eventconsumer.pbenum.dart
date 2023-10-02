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

import 'package:protobuf/protobuf.dart' as $pb;

class StorageOperationKind extends $pb.ProtobufEnum {
  static const StorageOperationKind write = StorageOperationKind._(0, _omitEnumNames ? '' : 'write');
  static const StorageOperationKind read = StorageOperationKind._(1, _omitEnumNames ? '' : 'read');

  static const $core.List<StorageOperationKind> values = <StorageOperationKind> [
    write,
    read,
  ];

  static final $core.Map<$core.int, StorageOperationKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StorageOperationKind? valueOf($core.int value) => _byValue[value];

  const StorageOperationKind._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
