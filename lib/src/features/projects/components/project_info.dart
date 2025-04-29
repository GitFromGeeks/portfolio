import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/old_sketch/getx_controllers/projects_controller.dart'
    show ProjectController;
import 'package:portfolio/src/features/projects/components/project_deatail.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

import '../../../core/helpers/constants/app_themes.dart'
    show bgColor, defaultPadding;
import '../../../core/old_sketch/model/project_model.dart' show projectList;

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
        // launchUrl(Uri.parse(projectList[index].link));
      },
      onTap: () {
        // ImageViewer(context, projectList[index].image);
        launchUrl(Uri.parse(projectList[index].link));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          top: defaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(index: index),
      ),
    );
  }
}
