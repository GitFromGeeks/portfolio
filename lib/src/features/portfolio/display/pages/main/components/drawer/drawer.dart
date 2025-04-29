import 'package:flutter/material.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show bgColor, defaultPadding, primaryColor;
import 'package:portfolio/src/features/portfolio/display/pages/main/components/drawer/contact_icons.dart';
import 'package:portfolio/src/features/portfolio/display/pages/main/components/drawer/personal_info.dart';

import 'about.dart';
import 'knowledges.dart';
import 'my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding),
                    ContactIcon(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
