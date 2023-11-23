import 'package:flutter/cupertino.dart';
import 'package:oberon_connector/api/swagger.enums.swagger.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/monitoring_entries.dart';

class OberonNavigationObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    var routeName = route.settings.name ?? "[Путь не определен]";
    var previousRouteName =
        previousRoute?.settings.name ?? "[Путь не определен]";
    var arguments = route.settings.arguments?.toString();
    var previousArguments = previousRoute?.settings.arguments?.toString();
    var popResult = route.currentResult.toString();
    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didPush",
      routeName: routeName,
      previousRouteName: previousRouteName,
      arguments: arguments,
      previousArguments: previousArguments,
      popResult: popResult,
      logTimestamp: DateTime.now(),
    ));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    var routeName = route.settings.name ?? "[Путь не определен]";
    var previousRouteName =
        previousRoute?.settings.name ?? "[Путь не определен]";
    var arguments = route.settings.arguments?.toString();
    var previousArguments = previousRoute?.settings.arguments?.toString();
    var popResult = route.currentResult.toString();
    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didPop",
      routeName: routeName,
      previousRouteName: previousRouteName,
      arguments: arguments,
      previousArguments: previousArguments,
      popResult: popResult,
      logTimestamp: DateTime.now(),
    ));
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    var routeName = route.settings.name ?? "[Путь не определен]";
    var previousRouteName =
        previousRoute?.settings.name ?? "[Путь не определен]";
    var arguments = route.settings.arguments?.toString();
    var previousArguments = previousRoute?.settings.arguments?.toString();
    var popResult = route.currentResult.toString();
    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didRemove",
      routeName: routeName,
      previousRouteName: previousRouteName,
      arguments: arguments,
      previousArguments: previousArguments,
      popResult: popResult,
      logTimestamp: DateTime.now(),
    ));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    var routeName = newRoute?.settings.name ?? "[Путь не определен]";
    var previousRouteName =
        oldRoute?.settings.name ?? "[Путь не определен]";
    var arguments = newRoute?.settings.arguments?.toString();
    var previousArguments = oldRoute?.settings.arguments?.toString();
    var popResult = newRoute?.currentResult.toString();
    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didReplace",
      routeName: routeName,
      previousRouteName: previousRouteName,
      arguments: arguments,
      previousArguments: previousArguments,
      popResult: popResult,
      logTimestamp: DateTime.now(),
    ));
  }

  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    var routeName = route.settings.name ?? "[Путь не определен]";
    var previousRouteName =
        previousRoute?.settings.name ?? "[Путь не определен]";
    var arguments = route.settings.arguments?.toString();
    var previousArguments = previousRoute?.settings.arguments?.toString();
    var popResult = route.currentResult.toString();
    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didStartUserGesture",
      routeName: routeName,
      previousRouteName: previousRouteName,
      arguments: arguments,
      previousArguments: previousArguments,
      popResult: popResult,
      logTimestamp: DateTime.now(),
    ));
  }

  @override
  void didStopUserGesture() {

    LogVault.addEntry(MonitoringEntry.navigationEvent(
      severity: EventSeverity.info,
      type: "didStopUserGesture",
      routeName: "Не предоставляется",
      previousRouteName: null,
      arguments: null,
      previousArguments: null,
      popResult: null,
      logTimestamp: DateTime.now(),
    ));
  }
}
