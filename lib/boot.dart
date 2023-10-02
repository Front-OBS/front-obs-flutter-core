import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:oberon_connector/log_vault.dart';
import 'package:oberon_connector/splash_screen.dart';

import 'environments.dart';

typedef OnReloadCallback = FutureOr Function();

typedef DevToolsLayerBuilder = Widget Function({
  required Widget child,
});

typedef Launcher<TEnv extends IApplicationEnvironment> = FutureOr Function(
    TEnv env, DevToolsLayerBuilder qaToolsLayer);

QAToolsGuardMain<TEnv extends IApplicationEnvironment>(
    List<TEnv> envs, Launcher<TEnv> launcher,
    [OnReloadCallback? onRestart]) async {
  //initServices();
  final options = ApplicationOptions<TEnv>(envs);
  WidgetsFlutterBinding.ensureInitialized();

  launchViaOberon<TEnv>(options, launcher, onRestart);
}

launchWithoutOberon<TEnv extends IApplicationEnvironment>(
    TEnv env, Launcher<TEnv> launcher) async {
  WidgetsFlutterBinding.ensureInitialized();
  await LogVault.initVault(env);
  //initServices();
  launcher(
      env,
      ({
        required Widget child,
      }) =>
          child);
}

launchViaOberon<TEnv extends IApplicationEnvironment>(
    ApplicationOptions<TEnv> options,
    Launcher<TEnv> launcher,
    OnReloadCallback? onRestart) async {
  runApp(OberonSplashScreen<TEnv>(
    options: options,
    launcher: launcher,
    onRestart: onRestart,
  ));
}
