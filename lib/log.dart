import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

void eventLog(String ext, {String scope = "Уведомления", String? payload = null}) {
  LogVault.addEntry(
    MonitoringEntry.event(
      scope: scope,
      event: ext,
      payload: payload,
      logTimestamp: DateTime.now(),
    ),
  );
}

void exceptionLog(Object ext, StackTrace trace) {
  print(ext);
  LogVault.addException(ext, trace);
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
