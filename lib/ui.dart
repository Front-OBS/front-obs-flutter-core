import 'package:flutter/material.dart';
import 'package:stack_trace/stack_trace.dart';

class ScrollDetector extends StatelessWidget {
  ScrollDetector({
    required this.child,
    this.identification,
  }) {
    if (identification == null) {
      identification = Trace.current(1).frames.first.member?.replaceAll(".build.<fn>", "");
    }
  }

  final Widget child;
  String? identification;

  @override
  Widget build(BuildContext context) {
    print(identification);
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
