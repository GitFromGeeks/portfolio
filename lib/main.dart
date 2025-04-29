import 'package:flutter/material.dart';

import 'app_bootstrapper.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppBootstrapper.init(
    mainAppWidget: const MyApp(),
    runApp: runApp,
  );
}
