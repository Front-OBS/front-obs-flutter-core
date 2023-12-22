import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:oberon_connector/log.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/oberon_connector.dart';
import 'package:oberon_connector/splash_screen.dart';

import 'environments.dart';

export "environments.dart";

typedef OnReloadCallback = FutureOr Function();

typedef DevToolsLayerBuilder = Widget Function({
  required Widget child,
});

typedef Launcher<TEnv extends IApplicationEnvironment> = FutureOr Function(
    TEnv env, DevToolsLayerBuilder qaToolsLayer);

launchRelease<TEnv extends IApplicationEnvironment>(
    {required String projectKey,
    required TEnv env,
    required Launcher<TEnv> launcher}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await LogVault.initVault(false, projectKey);

  final recorderController = ScreenRecorderController();
  LogVault.recorderController = recorderController;

  //initServices();
  try{
    launcher(
        env,
            ({
          required Widget child,
        }) =>
            ScreenRecorder(child: child, controller: recorderController));
  }catch(error, stack){
    exceptionLog(error, stack);
  }
  /*runZonedGuarded(
      () => , (error, stack) {
    exceptionLog(error, stack);
  });*/
}

Future launchDebug<TEnv extends IApplicationEnvironment>({
  required String projectKey,
  required ApplicationOptions<TEnv> options,
  required Launcher<TEnv> launcher,
  required OnReloadCallback? onRestart,
}) async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (details) {
      LogVault.addException(details.exception, details.stack);
    };

    final recorderController = ScreenRecorderController();
    LogVault.recorderController = recorderController;

    await LogVault.initVault(true, projectKey);
    try {
      runApp(
        ScreenRecorder(
          controller: recorderController,
          child: OberonSplashScreen<TEnv>(
            options: options,
            launcher: launcher,
            onRestart: onRestart,
          ),
        ),
      );
    } catch (error, stack) {
      exceptionLog(error, stack);
    }
  } catch (ex) {
    print(ex);
  }
}
