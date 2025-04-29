import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/src/features/certifications/certifications.dart'
    show Certifications;
import 'package:portfolio/src/features/intro/introduction.dart'
    show Introduction;
import 'package:portfolio/src/features/portfolio/display/pages/main/main_view.dart';
import 'package:portfolio/src/features/projects/project_view.dart'
    show ProjectsView;

class PortfolioPage extends ConsumerWidget {
  const PortfolioPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: MainView(
        pages: [const Introduction(), ProjectsView(), Certifications()],
      ),
    );
  }
}
