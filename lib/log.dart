
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

void textLog(String ext) {
  LogVault.addEntry(
    MonitoringEntry.textLog(
      severity: EventSeverity.info,
      text: ext,
      id: Uuid().v1(),
      logTimestamp: DateTime.now(),
      frames: Trace.current().frames.map(StackFrame.fromTrace).toList(),
    ),
  );
}


void exceptionLog(Object ext, StackTrace trace) {
  LogVault.addException(ext, trace);
}

void stateLog(String key, String value) {
  LogVault.addEntry(
    MonitoringEntry.stateChange(
      severity: EventSeverity.info,
      text: value,
      id: key,
      logTimestamp: DateTime.now(),
      frames: Trace.current().frames.map(StackFrame.fromTrace).toList(),
    ),
  );
}
