//
//  Generated code. Do not modify.
//  source: eventconsumer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use storageOperationKindDescriptor instead')
const StorageOperationKind$json = {
  '1': 'StorageOperationKind',
  '2': [
    {'1': 'write', '2': 0},
    {'1': 'read', '2': 1},
  ],
};

/// Descriptor for `StorageOperationKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List storageOperationKindDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlT3BlcmF0aW9uS2luZBIJCgV3cml0ZRAAEggKBHJlYWQQAQ==');

@$core.Deprecated('Use stubDescriptor instead')
const Stub$json = {
  '1': 'Stub',
};

/// Descriptor for `Stub`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stubDescriptor = $convert.base64Decode(
    'CgRTdHVi');

@$core.Deprecated('Use consumeOkDescriptor instead')
const ConsumeOk$json = {
  '1': 'ConsumeOk',
};

/// Descriptor for `ConsumeOk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consumeOkDescriptor = $convert.base64Decode(
    'CglDb25zdW1lT2s=');

@$core.Deprecated('Use deviceCommandDescriptor instead')
const DeviceCommand$json = {
  '1': 'DeviceCommand',
  '2': [
    {'1': 'restart', '3': 1, '4': 1, '5': 11, '6': '.eventconsumer.Restart', '9': 0, '10': 'restart'},
    {'1': 'clean_memory', '3': 2, '4': 1, '5': 11, '6': '.eventconsumer.CleanMemory', '9': 0, '10': 'cleanMemory'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `DeviceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceCommandDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VDb21tYW5kEjIKB3Jlc3RhcnQYASABKAsyFi5ldmVudGNvbnN1bWVyLlJlc3Rhcn'
    'RIAFIHcmVzdGFydBI/CgxjbGVhbl9tZW1vcnkYAiABKAsyGi5ldmVudGNvbnN1bWVyLkNsZWFu'
    'TWVtb3J5SABSC2NsZWFuTWVtb3J5QgkKB2NvbW1hbmQ=');

@$core.Deprecated('Use cleanMemoryDescriptor instead')
const CleanMemory$json = {
  '1': 'CleanMemory',
};

/// Descriptor for `CleanMemory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cleanMemoryDescriptor = $convert.base64Decode(
    'CgtDbGVhbk1lbW9yeQ==');

@$core.Deprecated('Use restartDescriptor instead')
const Restart$json = {
  '1': 'Restart',
};

/// Descriptor for `Restart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restartDescriptor = $convert.base64Decode(
    'CgdSZXN0YXJ0');

@$core.Deprecated('Use eventsBatchDescriptor instead')
const EventsBatch$json = {
  '1': 'EventsBatch',
  '2': [
    {'1': 'batchId', '3': 1, '4': 1, '5': 9, '10': 'batchId'},
    {'1': 'isLive', '3': 4, '4': 1, '5': 8, '10': 'isLive'},
    {'1': 'identification', '3': 2, '4': 1, '5': 11, '6': '.eventconsumer.IdentificationInfo', '10': 'identification'},
    {'1': 'events', '3': 3, '4': 3, '5': 11, '6': '.eventconsumer.RegisteredAppEvent', '10': 'events'},
  ],
};

/// Descriptor for `EventsBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventsBatchDescriptor = $convert.base64Decode(
    'CgtFdmVudHNCYXRjaBIYCgdiYXRjaElkGAEgASgJUgdiYXRjaElkEhYKBmlzTGl2ZRgEIAEoCF'
    'IGaXNMaXZlEkkKDmlkZW50aWZpY2F0aW9uGAIgASgLMiEuZXZlbnRjb25zdW1lci5JZGVudGlm'
    'aWNhdGlvbkluZm9SDmlkZW50aWZpY2F0aW9uEjkKBmV2ZW50cxgDIAMoCzIhLmV2ZW50Y29uc3'
    'VtZXIuUmVnaXN0ZXJlZEFwcEV2ZW50UgZldmVudHM=');

@$core.Deprecated('Use identificationInfoDescriptor instead')
const IdentificationInfo$json = {
  '1': 'IdentificationInfo',
  '2': [
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'userIdentification', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'userIdentification', '17': true},
  ],
  '8': [
    {'1': '_userIdentification'},
  ],
};

/// Descriptor for `IdentificationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List identificationInfoDescriptor = $convert.base64Decode(
    'ChJJZGVudGlmaWNhdGlvbkluZm8SEgoEY29kZRgCIAEoCVIEY29kZRIzChJ1c2VySWRlbnRpZm'
    'ljYXRpb24YAyABKAlIAFISdXNlcklkZW50aWZpY2F0aW9uiAEBQhUKE191c2VySWRlbnRpZmlj'
    'YXRpb24=');

@$core.Deprecated('Use registeredAppEventDescriptor instead')
const RegisteredAppEvent$json = {
  '1': 'RegisteredAppEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'text', '3': 3, '4': 1, '5': 11, '6': '.eventconsumer.TextAppEvent', '9': 0, '10': 'text'},
    {'1': 'stateChange', '3': 4, '4': 1, '5': 11, '6': '.eventconsumer.StateChangeEvent', '9': 0, '10': 'stateChange'},
    {'1': 'network', '3': 5, '4': 1, '5': 11, '6': '.eventconsumer.NetworkRequest', '9': 0, '10': 'network'},
    {'1': 'tap', '3': 6, '4': 1, '5': 11, '6': '.eventconsumer.PointerTap', '9': 0, '10': 'tap'},
    {'1': 'storage', '3': 7, '4': 1, '5': 11, '6': '.eventconsumer.StorageOperation', '9': 0, '10': 'storage'},
    {'1': 'exception', '3': 8, '4': 1, '5': 11, '6': '.eventconsumer.ExceptionEvent', '9': 0, '10': 'exception'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `RegisteredAppEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registeredAppEventDescriptor = $convert.base64Decode(
    'ChJSZWdpc3RlcmVkQXBwRXZlbnQSDgoCaWQYASABKAlSAmlkEhwKCXRpbWVzdGFtcBgCIAEoA1'
    'IJdGltZXN0YW1wEjEKBHRleHQYAyABKAsyGy5ldmVudGNvbnN1bWVyLlRleHRBcHBFdmVudEgA'
    'UgR0ZXh0EkMKC3N0YXRlQ2hhbmdlGAQgASgLMh8uZXZlbnRjb25zdW1lci5TdGF0ZUNoYW5nZU'
    'V2ZW50SABSC3N0YXRlQ2hhbmdlEjkKB25ldHdvcmsYBSABKAsyHS5ldmVudGNvbnN1bWVyLk5l'
    'dHdvcmtSZXF1ZXN0SABSB25ldHdvcmsSLQoDdGFwGAYgASgLMhkuZXZlbnRjb25zdW1lci5Qb2'
    'ludGVyVGFwSABSA3RhcBI7CgdzdG9yYWdlGAcgASgLMh8uZXZlbnRjb25zdW1lci5TdG9yYWdl'
    'T3BlcmF0aW9uSABSB3N0b3JhZ2USPQoJZXhjZXB0aW9uGAggASgLMh0uZXZlbnRjb25zdW1lci'
    '5FeGNlcHRpb25FdmVudEgAUglleGNlcHRpb25CBwoFZXZlbnQ=');

@$core.Deprecated('Use textAppEventDescriptor instead')
const TextAppEvent$json = {
  '1': 'TextAppEvent',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'traces', '3': 2, '4': 3, '5': 11, '6': '.eventconsumer.Trace', '10': 'traces'},
  ],
};

/// Descriptor for `TextAppEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textAppEventDescriptor = $convert.base64Decode(
    'CgxUZXh0QXBwRXZlbnQSEgoEdGV4dBgBIAEoCVIEdGV4dBIsCgZ0cmFjZXMYAiADKAsyFC5ldm'
    'VudGNvbnN1bWVyLlRyYWNlUgZ0cmFjZXM=');

@$core.Deprecated('Use exceptionEventDescriptor instead')
const ExceptionEvent$json = {
  '1': 'ExceptionEvent',
  '2': [
    {'1': 'exception', '3': 1, '4': 1, '5': 9, '10': 'exception'},
    {'1': 'traces', '3': 2, '4': 3, '5': 11, '6': '.eventconsumer.Trace', '10': 'traces'},
  ],
};

/// Descriptor for `ExceptionEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exceptionEventDescriptor = $convert.base64Decode(
    'Cg5FeGNlcHRpb25FdmVudBIcCglleGNlcHRpb24YASABKAlSCWV4Y2VwdGlvbhIsCgZ0cmFjZX'
    'MYAiADKAsyFC5ldmVudGNvbnN1bWVyLlRyYWNlUgZ0cmFjZXM=');

@$core.Deprecated('Use traceDescriptor instead')
const Trace$json = {
  '1': 'Trace',
  '2': [
    {'1': 'line', '3': 1, '4': 1, '5': 5, '10': 'line'},
    {'1': 'column', '3': 2, '4': 1, '5': 5, '10': 'column'},
    {'1': 'function', '3': 3, '4': 1, '5': 9, '10': 'function'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `Trace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List traceDescriptor = $convert.base64Decode(
    'CgVUcmFjZRISCgRsaW5lGAEgASgFUgRsaW5lEhYKBmNvbHVtbhgCIAEoBVIGY29sdW1uEhoKCG'
    'Z1bmN0aW9uGAMgASgJUghmdW5jdGlvbhISCgRwYXRoGAQgASgJUgRwYXRo');

@$core.Deprecated('Use stateChangeEventDescriptor instead')
const StateChangeEvent$json = {
  '1': 'StateChangeEvent',
  '2': [
    {'1': 'stateName', '3': 1, '4': 1, '5': 9, '10': 'stateName'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'traces', '3': 3, '4': 3, '5': 11, '6': '.eventconsumer.Trace', '10': 'traces'},
  ],
};

/// Descriptor for `StateChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateChangeEventDescriptor = $convert.base64Decode(
    'ChBTdGF0ZUNoYW5nZUV2ZW50EhwKCXN0YXRlTmFtZRgBIAEoCVIJc3RhdGVOYW1lEhQKBXZhbH'
    'VlGAIgASgJUgV2YWx1ZRIsCgZ0cmFjZXMYAyADKAsyFC5ldmVudGNvbnN1bWVyLlRyYWNlUgZ0'
    'cmFjZXM=');

@$core.Deprecated('Use pointerTapDescriptor instead')
const PointerTap$json = {
  '1': 'PointerTap',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `PointerTap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointerTapDescriptor = $convert.base64Decode(
    'CgpQb2ludGVyVGFwEgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeQ==');

@$core.Deprecated('Use storageOperationDescriptor instead')
const StorageOperation$json = {
  '1': 'StorageOperation',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'operation', '3': 3, '4': 1, '5': 14, '6': '.eventconsumer.StorageOperationKind', '10': 'operation'},
  ],
};

/// Descriptor for `StorageOperation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageOperationDescriptor = $convert.base64Decode(
    'ChBTdG9yYWdlT3BlcmF0aW9uEhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YW'
    'x1ZRJBCglvcGVyYXRpb24YAyABKA4yIy5ldmVudGNvbnN1bWVyLlN0b3JhZ2VPcGVyYXRpb25L'
    'aW5kUglvcGVyYXRpb24=');

@$core.Deprecated('Use networkRequestDescriptor instead')
const NetworkRequest$json = {
  '1': 'NetworkRequest',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'statusCode', '3': 6, '4': 1, '5': 5, '10': 'statusCode'},
    {'1': 'requestHeaders', '3': 2, '4': 3, '5': 11, '6': '.eventconsumer.NetworkRequest.RequestHeadersEntry', '10': 'requestHeaders'},
    {'1': 'requestPayload', '3': 3, '4': 1, '5': 11, '6': '.eventconsumer.NetworkCallPayload', '10': 'requestPayload'},
    {'1': 'responseHeaders', '3': 4, '4': 3, '5': 11, '6': '.eventconsumer.NetworkRequest.ResponseHeadersEntry', '10': 'responseHeaders'},
    {'1': 'responsePayload', '3': 5, '4': 1, '5': 11, '6': '.eventconsumer.NetworkCallPayload', '10': 'responsePayload'},
  ],
  '3': [NetworkRequest_RequestHeadersEntry$json, NetworkRequest_ResponseHeadersEntry$json],
};

@$core.Deprecated('Use networkRequestDescriptor instead')
const NetworkRequest_RequestHeadersEntry$json = {
  '1': 'RequestHeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use networkRequestDescriptor instead')
const NetworkRequest_ResponseHeadersEntry$json = {
  '1': 'ResponseHeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NetworkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkRequestDescriptor = $convert.base64Decode(
    'Cg5OZXR3b3JrUmVxdWVzdBIQCgN1cmwYASABKAlSA3VybBIeCgpzdGF0dXNDb2RlGAYgASgFUg'
    'pzdGF0dXNDb2RlElkKDnJlcXVlc3RIZWFkZXJzGAIgAygLMjEuZXZlbnRjb25zdW1lci5OZXR3'
    'b3JrUmVxdWVzdC5SZXF1ZXN0SGVhZGVyc0VudHJ5Ug5yZXF1ZXN0SGVhZGVycxJJCg5yZXF1ZX'
    'N0UGF5bG9hZBgDIAEoCzIhLmV2ZW50Y29uc3VtZXIuTmV0d29ya0NhbGxQYXlsb2FkUg5yZXF1'
    'ZXN0UGF5bG9hZBJcCg9yZXNwb25zZUhlYWRlcnMYBCADKAsyMi5ldmVudGNvbnN1bWVyLk5ldH'
    'dvcmtSZXF1ZXN0LlJlc3BvbnNlSGVhZGVyc0VudHJ5Ug9yZXNwb25zZUhlYWRlcnMSSwoPcmVz'
    'cG9uc2VQYXlsb2FkGAUgASgLMiEuZXZlbnRjb25zdW1lci5OZXR3b3JrQ2FsbFBheWxvYWRSD3'
    'Jlc3BvbnNlUGF5bG9hZBpBChNSZXF1ZXN0SGVhZGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5'
    'EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaQgoUUmVzcG9uc2VIZWFkZXJzRW50cnkSEAoDa2'
    'V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use networkCallPayloadDescriptor instead')
const NetworkCallPayload$json = {
  '1': 'NetworkCallPayload',
  '2': [
    {'1': 'form', '3': 1, '4': 1, '5': 11, '6': '.eventconsumer.FormBody', '9': 0, '10': 'form'},
    {'1': 'json', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'json'},
    {'1': 'custom', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'custom'},
  ],
  '8': [
    {'1': 'body'},
  ],
};

/// Descriptor for `NetworkCallPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkCallPayloadDescriptor = $convert.base64Decode(
    'ChJOZXR3b3JrQ2FsbFBheWxvYWQSLQoEZm9ybRgBIAEoCzIXLmV2ZW50Y29uc3VtZXIuRm9ybU'
    'JvZHlIAFIEZm9ybRIUCgRqc29uGAMgASgJSABSBGpzb24SGAoGY3VzdG9tGAIgASgJSABSBmN1'
    'c3RvbUIGCgRib2R5');

@$core.Deprecated('Use formBodyDescriptor instead')
const FormBody$json = {
  '1': 'FormBody',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.eventconsumer.FormBody.EntriesEntry', '10': 'entries'},
  ],
  '3': [FormBody_EntriesEntry$json],
};

@$core.Deprecated('Use formBodyDescriptor instead')
const FormBody_EntriesEntry$json = {
  '1': 'EntriesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FormBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formBodyDescriptor = $convert.base64Decode(
    'CghGb3JtQm9keRI+CgdlbnRyaWVzGAEgAygLMiQuZXZlbnRjb25zdW1lci5Gb3JtQm9keS5Fbn'
    'RyaWVzRW50cnlSB2VudHJpZXMaOgoMRW50cmllc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQK'
    'BXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

