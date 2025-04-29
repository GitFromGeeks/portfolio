import 'package:flutter/material.dart';
import 'package:portfolio/src/core/components/intro_body.dart' show IntroBody;
import 'package:portfolio/src/core/components/social_media_list.dart'
    show SocialMediaIconList;
import 'package:portfolio/src/core/old_sketch/responsive.dart' show Responsive;
import 'package:portfolio/src/features/intro/components/side_menu_button.dart'
    show MenuButton;

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
          if (!Responsive.isLargeMobile(context))
            MenuButton(onTap: () => Scaffold.of(context).openDrawer()),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.07),
          const Expanded(child: IntroBody()),
        ],
      ),
    );
  }
}
