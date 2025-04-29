import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/src/features/portfolio/display/pages/portfolio_page.dart';

class SkeletonPage extends ConsumerWidget {
  const SkeletonPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(body: PortfolioPage());
  }
}
