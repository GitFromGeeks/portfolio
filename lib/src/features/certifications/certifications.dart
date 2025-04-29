import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show defaultPadding;
import 'package:portfolio/src/core/old_sketch/getx_controllers/certification_controller.dart'
    show CertificationController;
import 'package:portfolio/src/core/old_sketch/responsive.dart' show Responsive;
import 'package:portfolio/src/features/projects/components/title_text.dart'
    show TitleText;

import 'components/certification_grid.dart';

class Certifications extends StatelessWidget {
  final controller = Get.put(CertificationController());
  Certifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'Certifications & ', title: 'License'),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Responsive(
              desktop: CertificateGrid(crossAxisCount: 3, ratio: 1.5),
              extraLargeScreen: CertificateGrid(crossAxisCount: 4, ratio: 1.6),
              largeMobile: CertificateGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: CertificateGrid(crossAxisCount: 1, ratio: 1.4),
              tablet: CertificateGrid(ratio: 1.7, crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
