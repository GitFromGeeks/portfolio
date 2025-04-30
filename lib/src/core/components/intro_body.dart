import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart';
import 'package:portfolio/src/core/old_sketch/responsive.dart';
import 'package:portfolio/src/features/portfolio/display/pages/services_page.dart';
import 'package:portfolio/src/features/projects/components/title_text.dart'
    show TitleText;

import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(height: size.height * 0.06),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(width: size.width * 0.23),
                    const AnimatedImageContainer(width: 150, height: 200),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(height: size.height * 0.1),
              const Responsive(
                desktop: MyPortfolioText(start: 40, end: 50),
                largeMobile: MyPortfolioText(start: 40, end: 35),
                mobile: MyPortfolioText(start: 35, end: 30),
                tablet: MyPortfolioText(start: 50, end: 40),
              ),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(height: defaultPadding, color: Colors.transparent),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(height: defaultPadding * 2),
              const DownloadButton(),

              const SizedBox(height: defaultPadding * 2),

              const TitleText(prefix: 'My', title: 'Services'),

              ServiceCard(
                title: "Android & iOS App Development",
                description:
                    "Flutter-based mobile app development with modern UI, state management, and API integration.",
                icon: Icons.phone_android,
              ),
              ServiceCard(
                title: "Backend Development with Go",
                description:
                    "Scalable, high-performance backend solutions with authentication, and PostgreSQL.",
                icon: Icons.cloud,
              ),
              ServiceCard(
                title: "Enterprise Device Management",
                description:
                    "Lock and control devices within organization remotely for security and operational efficiency.",
                icon: Icons.lock,
              ),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer(),
      ],
    );
  }
}
