import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:uuid/uuid.dart';

import '../monitoring_entries.dart';

class OberonDioInterceptor extends Interceptor {
  OberonDioInterceptor({this.scope = "Главный клиент"});

  final String scope;

  final Map<String, MonitoringEntryNetworkCall> monitoring = Map();

  MonitoringNetworkCallPayload computePayload(dynamic data) {
    if (data is FormData) {
      return MonitoringNetworkCallPayload.formdata(
          data: Map.fromEntries(
              data.fields.map((e) => MapEntry(e.key, e.value))));
    } else if (data is Map<String, dynamic>) {
      return MonitoringNetworkCallPayload.json(json: jsonEncode(data));
    } else {
      try{
        final json = data.toJson();
        return MonitoringNetworkCallPayload.json(json: jsonEncode(data));
      }catch(ex){
        return MonitoringNetworkCallPayload.custom(content: data.toString());
      }

    }
  }

  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final reqId = Uuid().v1();
    final entry = MonitoringEntry.networkCall(
      scope: scope,
      id: reqId,
      start: DateTime.now(),
      uri: options.uri.toString(),
      requestHeaders:
          options.headers.map((key, value) => MapEntry(key, value.toString())),
      requestQuery: options.queryParameters
          .map((key, value) => MapEntry(key, value.toString())),
      request: computePayload(options.data),
      response: null,
      statusCode: 0,
      end: null,
      logTimestamp: DateTime.now(),
    );
    monitoring[reqId] = entry as MonitoringEntryNetworkCall;
    // GetIt.I.get<LogVault>().addEntry(entry);
    options.extra["reqId"] = reqId;
    handler.next(options);
  }

  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    try {
      final id = response.requestOptions.extra["reqId"];
      final entry = monitoring[id];
      if (entry != null) {
        entry.statusCode = response.statusCode ?? 0;
        entry.responseHeaders = response.headers.map
            .map((key, value) => MapEntry(key, value.join("; ")));
        entry.response = computePayload(response.data);
        entry.end = DateTime.now();
        //add entry
        LogVault.addEntry(entry);
      }
    } catch (ex) {
      print("err");
    }

    handler.next(response);
  }

  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    final id = err.requestOptions.extra["reqId"];
    final entry = monitoring[id];
    if (entry != null) {
      entry.statusCode = err.response?.statusCode ?? 0;
      entry.responseHeaders = err.response?.headers.map
          .map((key, value) => MapEntry(key, value.join("; ")));
      entry.response = computePayload(err.response?.data);
      entry.end = DateTime.now();
      LogVault.addEntry(entry);
    }
    handler.next(err);
  }
}