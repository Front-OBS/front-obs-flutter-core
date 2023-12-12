import 'dart:convert';

import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

void eventLog(
  String text, {
  String scope = "Уведомления",
  Map<String, dynamic>? jsonPayload,
  bool liveOnly = false,
}) {
  String? jsonP;
  try {
    if (jsonPayload != null) jsonP = jsonEncode(jsonPayload);
  } catch (ex) {
    print("[ОБЕРОН] Не удалось закодировать payload события ${text}");
  }
  LogVault.addEntry(
    MonitoringEntry.event(
      scope: scope,
      event: text,
      payload: jsonP,
      logTimestamp: DateTime.now(),
    ),
    liveOnly,
  );
}

void exceptionLog(Object ext, StackTrace trace, {String? scope}) {
  print(ext);
  LogVault.addException(ext, trace, scope: scope ?? "Общие ошибки");
}

void stateLog(String key, String value, {String scope = "Общее состояние"}) {
  LogVault.addEntry(
    MonitoringEntry.stateChange(
      scope: scope,
      payload: value,
      key: key,
      logTimestamp: DateTime.now(),
    ),
  );
}
