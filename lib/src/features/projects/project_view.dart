import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/features/projects/components/title_text.dart'
    show TitleText;

import '../../core/helpers/constants/app_themes.dart' show defaultPadding;
import '../../core/old_sketch/getx_controllers/projects_controller.dart'
    show ProjectController;
import '../../core/old_sketch/responsive.dart' show Responsive;
import 'components/projects_grid.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'Latest', title: 'Projects'),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Responsive(
              desktop: ProjectGrid(crossAxisCount: 3),
              extraLargeScreen: ProjectGrid(crossAxisCount: 4),
              largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
              tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
