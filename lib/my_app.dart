import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/src/core/config/routes/app_router.dart'
    show AppRouter;
import 'package:portfolio/src/core/config/routes/routes.dart' show Routes;
import 'package:portfolio/src/core/helpers/constants/app_colors.dart'
    show AppColors;
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show AppThemes;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Altamash Husain';
    const showDebugBanner = false;
    return ProviderScope(
      child: MaterialApp(
        title: title,
        debugShowCheckedModeBanner: showDebugBanner,
        color: AppColors.primaryColor,
        theme: AppThemes.mainTheme,
        initialRoute: Routes.initialRoute,
        onGenerateRoute: AppRouter.generateRoute,
        navigatorKey: AppRouter.navigatorKey,
      ),
    );
  }
}


// git remote add origin https://github.com/GitFromGeeks/GitFromGeeks.github.io.git