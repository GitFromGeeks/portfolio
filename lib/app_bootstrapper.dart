import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class AppBootstrapper {
  const AppBootstrapper._();

  static Future<void> init({
    required Widget mainAppWidget,
    required void Function(Widget) runApp,
  }) async {
    // await PathProviderService.init();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    setUrlStrategy(PathUrlStrategy());

    runApp(mainAppWidget);
  }
}
