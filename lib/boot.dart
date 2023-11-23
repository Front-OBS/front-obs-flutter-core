import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:oberon_connector/log.dart';
import 'package:oberon_connector/log_vault.dart';
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

  //initServices();
  runZonedGuarded(
      () => launcher(
          env,
          ({
            required Widget child,
          }) =>
              child), (error, stack) {
    exceptionLog(error, stack);
  });
}

Future launchDebug<TEnv extends IApplicationEnvironment>({
  required String projectKey,
  required ApplicationOptions<TEnv> options,
  required Launcher<TEnv> launcher,
  required OnReloadCallback? onRestart,
}) async {
  try{
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (details) {
      LogVault.addException(details.exception, details.stack);
    };

    await LogVault.initVault(true, projectKey);
    runZonedGuarded(
          () => OberonSplashScreen<TEnv>(
        options: options,
        launcher: launcher,
        onRestart: onRestart,
      ),
          (error, stack) {
        exceptionLog(error, stack);
      },
    );
  }catch(ex){
    print(ex);
  }
}
