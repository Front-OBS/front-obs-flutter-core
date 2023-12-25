import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:uuid/uuid.dart';

import '../monitoring_entries.dart';

class OberonDioInterceptor extends Interceptor {
  OberonDioInterceptor({this.scope = "Главный клиент"});

  final String scope;

  final Map<String, MonitoringEntry> monitoring = Map();

  Map<String, dynamic> computePayload(dynamic data) {
    if (data is FormData) {
      return {
        "FormData":
            Map.fromEntries(data.fields.map((e) => MapEntry(e.key, e.value)))
      };
    } else if (data is Map<String, dynamic>) {
      return {"Json": data};
    } else {
      try {
        final json = data.toJson();
        return {"Json": json};
      } catch (ex) {
        return {"Raw": data};
      }
    }
  }

  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final reqId = Uuid().v1();
    final entry = MonitoringEntry(
      scope: scope,
      identification: options.uri.toString(),
      severity: "Отладка",
      kind: "Сетевой запрос",
      payload: {
        "id": reqId,
        "start": DateTime.now(),
        "uri": options.uri.toString(),
        "requestHeaders": options.headers
            .map((key, value) => MapEntry(key, value.toString())),
        "requestQuery": options.queryParameters
            .map((key, value) => MapEntry(key, value.toString())),
        "request": computePayload(options.data),
      },
      logTimestamp: DateTime.now(),
    );
    monitoring[reqId] = entry;
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
      var entry = monitoring[id];
      if (entry != null) {
        entry = entry.copyWith(payload: {
          ...(entry?.payload ?? {}),
          "statusCode": response.statusCode,
          "responseHeaders": response.headers.map
              .map((key, value) => MapEntry(key, value.join("; "))),
          "response": computePayload(response.data),
          "end": DateTime.now(),
        });
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
    var entry = monitoring[id];
    if (entry != null) {
      entry = entry.copyWith(payload: {
        ...(entry?.payload ?? {}),
        "statusCode": err.response?.statusCode,
        "responseHeaders": err.response?.headers.map
            .map((key, value) => MapEntry(key, value.join("; "))),
        "response": computePayload(err.response?.data),
        "error": err.error?.toString(),
        "stacktrace": err.stackTrace.toString(),
        "message": err.message,
        "end": DateTime.now(),
      });
      //add entry
      LogVault.addEntry(entry);
    }
    handler.next(err);
  }
}
