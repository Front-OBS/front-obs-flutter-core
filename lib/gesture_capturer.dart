import 'package:flutter/cupertino.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';

class OberonGestureRecorder extends StatelessWidget {
  const OberonGestureRecorder({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapUp: (details) {
        LogVault.addEntry(
          MonitoringEntry.tapEvent(
            logTimestamp: DateTime.now(),
            severity: EventSeverity.info,
            x: details.globalPosition.dx,
            y: details.globalPosition.dy,
          ),
        );
      },
      child: child,
    );
  }
}
