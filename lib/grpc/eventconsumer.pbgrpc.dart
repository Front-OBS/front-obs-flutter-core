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
  static final _$consumeEvents = $grpc.ClientMethod<$0.EventsBatch, $0.ConsumeEnd>(
      '/eventconsumer.EventConsumer/consumeEvents',
      ($0.EventsBatch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConsumeEnd.fromBuffer(value));

  EventConsumerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ConsumeEnd> consumeEvents($async.Stream<$0.EventsBatch> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$consumeEvents, request, options: options).single;
  }
}

@$pb.GrpcServiceName('eventconsumer.EventConsumer')
abstract class EventConsumerServiceBase extends $grpc.Service {
  $core.String get $name => 'eventconsumer.EventConsumer';

  EventConsumerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EventsBatch, $0.ConsumeEnd>(
        'consumeEvents',
        consumeEvents,
        true,
        false,
        ($core.List<$core.int> value) => $0.EventsBatch.fromBuffer(value),
        ($0.ConsumeEnd value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConsumeEnd> consumeEvents($grpc.ServiceCall call, $async.Stream<$0.EventsBatch> request);
}
