//
//  Generated code. Do not modify.
//  source: eventconsumer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'eventconsumer.pb.dart' as $0;

export 'eventconsumer.pb.dart';

@$pb.GrpcServiceName('eventconsumer.EventConsumer')
class EventConsumerClient extends $grpc.Client {
  static final _$consumeEvents = $grpc.ClientMethod<$0.EventsBatch, $0.ConsumeOk>(
      '/eventconsumer.EventConsumer/consumeEvents',
      ($0.EventsBatch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConsumeOk.fromBuffer(value));
  static final _$healthCheck = $grpc.ClientMethod<$0.Stub, $0.Stub>(
      '/eventconsumer.EventConsumer/healthCheck',
      ($0.Stub value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Stub.fromBuffer(value));

  EventConsumerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ConsumeOk> consumeEvents($0.EventsBatch request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$consumeEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.Stub> healthCheck($0.Stub request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$healthCheck, request, options: options);
  }
}

@$pb.GrpcServiceName('eventconsumer.EventConsumer')
abstract class EventConsumerServiceBase extends $grpc.Service {
  $core.String get $name => 'eventconsumer.EventConsumer';

  EventConsumerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EventsBatch, $0.ConsumeOk>(
        'consumeEvents',
        consumeEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EventsBatch.fromBuffer(value),
        ($0.ConsumeOk value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Stub, $0.Stub>(
        'healthCheck',
        healthCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Stub.fromBuffer(value),
        ($0.Stub value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConsumeOk> consumeEvents_Pre($grpc.ServiceCall call, $async.Future<$0.EventsBatch> request) async {
    return consumeEvents(call, await request);
  }

  $async.Future<$0.Stub> healthCheck_Pre($grpc.ServiceCall call, $async.Future<$0.Stub> request) async {
    return healthCheck(call, await request);
  }

  $async.Future<$0.ConsumeOk> consumeEvents($grpc.ServiceCall call, $0.EventsBatch request);
  $async.Future<$0.Stub> healthCheck($grpc.ServiceCall call, $0.Stub request);
}
