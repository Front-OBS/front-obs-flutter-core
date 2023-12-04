import 'package:flutter/material.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';
import 'package:stack_trace/stack_trace.dart';

class ScrollDetector extends StatelessWidget {
  ScrollDetector({
    required this.child,
    this.identification,
  }) {
    if (identification == null) {
      identification =
          Trace.current(1).frames.first.member?.replaceAll(".build.<fn>", "");
    }
  }

  final Widget child;
  String? identification;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollNotification) {
            print(
                "SCROLL ${notification.metrics.extentBefore / notification.metrics.extentTotal}"
                " ${notification.metrics.extentInside / notification.metrics.extentTotal}"
                " ${notification.metrics.extentTotal / notification.metrics.extentTotal}");
          }
          return false;
        },
        child: child);
  }
}

class TapDetector extends StatelessWidget {
  TapDetector({
    required this.child,
    this.identification,
    this.scope = "Общие нажатия",
    this.payload,
  }) {
    if (identification == null) {
      identification =
          Trace.current(1).frames.first.member?.replaceAll(".build.<fn>", "");
    }
  }

  final Widget child;
  final String scope;
  final String? payload;
  String? identification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (details) {
        LogVault.addEntry(MonitoringEntry.tapEvent(
          scope: scope,
          identification: identification ?? "Без названия",
          payload: payload,
          coordX: details.globalPosition.dx,
          coordY: details.globalPosition.dy,
          logTimestamp: DateTime.now(),
        ));
      },
      child: child,
    );
  }
}
