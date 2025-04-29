import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/src/features/portfolio/display/pages/splash/splash_view.dart';
import 'package:portfolio/src/root/display/pages/skeleton_page.dart';
import 'package:portfolio/src/root/display/providers/app_startup_providers.dart'
    show cacheLoaderFutureProvider;

class AppStartupPage extends ConsumerWidget {
  const AppStartupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cacheLoaderFuture = ref.watch(cacheLoaderFutureProvider);
    return cacheLoaderFuture.when(
      data: (_) => SkeletonPage(),
      loading: () => SplashView(),
      error: (error, st) => Scaffold(body: Text("Error Loading")),
    );
  }
}
