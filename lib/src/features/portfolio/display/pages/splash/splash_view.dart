import 'package:flutter/material.dart';
import 'package:portfolio/src/features/portfolio/display/pages/splash/componenets/animated_loading_text.dart'
    show AnimatedLoadingText;

import '../../../../../core/components/animated_texts_componenets.dart';
import '../../../../../core/helpers/constants/app_themes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100, height: 100),
            SizedBox(height: defaultPadding),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
