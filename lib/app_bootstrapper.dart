import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

    runApp(mainAppWidget);
  }
}
