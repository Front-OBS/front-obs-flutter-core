import 'dart:convert';

import 'package:frontobs_core/log_vault.dart';
import 'package:frontobs_core/monitoring_entries.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

void debugLog(
  String text, {
  String scope = "Уведомления",
  Map<String, dynamic>? jsonPayload,
  bool liveOnly = false,
  String type = "Уведомление",
}) {
  LogVault.addEntry(
    MonitoringEntry(
      scope: scope,
      identification: text,
      severity: "Отладка",
      payload: jsonPayload,
      kind: type,
      logTimestamp: DateTime.now(),
    ),
    liveOnly,
  );
}

void actionLog(
  String text, {
  String scope = "Общие активность",
  Map<String, dynamic>? jsonPayload,
  bool liveOnly = false,
  String type = "Уведомление",
}) {
  LogVault.addEntry(
    MonitoringEntry(
      scope: scope,
      identification: text,
      severity: "Активность",
      payload: jsonPayload,
      kind: type,
      logTimestamp: DateTime.now(),
    ),
    liveOnly,
  );
}

void exceptionLog(Object ext, StackTrace trace, {String? scope}) {
  print(ext);
  LogVault.addException(ext, trace, scope: scope ?? "Общие ошибки");
}

void stateLog(String key, dynamic value,
    {dynamic previous, String scope = "Общее состояние"}) {
  LogVault.addEntry(
    MonitoringEntry(
      scope: scope,
      payload: {
        "next": value,
        "prev": previous,
      },
      kind: "Состояние",
      identification: key,
      severity: "Отладка",
      logTimestamp: DateTime.now(),
    ),
  );
}
