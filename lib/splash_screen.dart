import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:emojis/emoji.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:super_clipboard/super_clipboard.dart';
import 'package:uuid/uuid.dart';

import 'boot.dart';
import 'environments.dart';
import 'log_vault.dart';

class OberonSplashScreen<TEnv extends IApplicationEnvironment>
    extends StatefulWidget {
  const OberonSplashScreen({
    super.key,
    required this.options,
    required this.launcher,
    required this.onRestart,
  });

  final ApplicationOptions<TEnv> options;
  final Launcher<TEnv> launcher;
  final OnReloadCallback? onRestart;

  @override
  State<OberonSplashScreen<TEnv>> createState() =>
      _OberonSplashScreenState<TEnv>();
}

class _OberonSplashScreenState<TEnv extends IApplicationEnvironment>
    extends State<OberonSplashScreen<TEnv>> {
  String? deviceCode;
  String? appName;

  void loadDeviceInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName = packageInfo.appName;
    String id = await DeviceUuid().getUUID() ?? "UNKNOWN";

    setState(() {
      deviceCode = id;
    });
  }

  @override
  void initState() {
    loadDeviceInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Container(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.translationValues(-20, 0, 0) *
                  Matrix4.rotationZ(-0.4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < 5; i++) ...[
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 0.3 + Random().nextDouble() * 0.4,
                        child: Container(
                          color: Colors.white.withOpacity(0.05),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ]
                ]..removeLast(),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "ОБЕРОН МП",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "X\n${appName}",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white.withOpacity(0.5)),
                    ),
                    Spacer(),
                    Text(
                      "Код устройства",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () async {
                          final item = DataWriterItem();
                          item.add(await Formats.plainText.call(deviceCode!));
                          await ClipboardWriter.instance.write([item]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  deviceCode ?? "Получение",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.copy, size: 14),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Использовать для поиска устройства в терминале",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "Конфигурации запуска",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            for (final env in widget.options.environments) ...[
                              GestureDetector(
                                onTap: () async {
                                  startEnv(env);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Spacer(),
                                      Text(env.envTitle),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ]
                          ]..removeLast(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> startEnv(TEnv env) async {
    await LogVault.initVault(env);
    /*setState(() {
      isLaunching = true;
    });*/
/*
    if (widget.onRestart != null) {
      await widget.onRestart!();
    }*/
/*
    GetIt.I.get<SessionVault>().appRestarted;*/

    final newKey = GlobalKey();
/*
    final builder = ({
      required Widget child,
    }) {
      return QaToolsLayer<TEnv>(
        key: newKey,
        options: widget.options,
        launcher: widget.launcher,
        onRestart: widget.onRestart,
        child: child,
      );
    };*/
/*

    QaToolsLayer.visibility.value = false;
*/

    FlutterError.onError = (details) {
      LogVault.addException(details.exception, details.stack);
      //  GetIt.I.get<LogVault>().addException(details.exception, details.stack!);
    };

    await widget.launcher(
      env,
      ({required Widget child}) => child,
    )!;

    /* Zone.current.fork().run(
          () async => await widget.launcher(
            env,
            ({required Widget child}) => child,
          )!,
        );*/
    /* setState(() {
      isLaunching = false;
    });*/
  }
}
