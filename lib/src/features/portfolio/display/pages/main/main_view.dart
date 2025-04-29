import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show defaultPadding;
import 'package:portfolio/src/core/old_sketch/getx_controllers/projects_controller.dart'
    show controller;
import 'package:portfolio/src/core/old_sketch/responsive.dart' show Responsive;
import 'package:portfolio/src/features/portfolio/display/pages/main/components/navigation_bar.dart'
    show TopNavigationBar;

import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(height: defaultPadding * 2)
                : const SizedBox(height: defaultPadding / 2),
            const SizedBox(height: 80, child: TopNavigationBar()),
            if (Responsive.isLargeMobile(context))
              const Row(children: [Spacer(), NavigationButtonList(), Spacer()]),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
