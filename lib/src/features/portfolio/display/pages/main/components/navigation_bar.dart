import 'package:flutter/material.dart';
import 'package:portfolio/src/core/components/side_menu_button.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show defaultPadding;
import 'package:portfolio/src/features/portfolio/display/pages/main/components/connect_button.dart'
    show ConnectButton;

import '../../../../../../core/old_sketch/responsive.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child:
                !Responsive.isLargeMobile(context)
                    ? Image.asset('assets/images/triange_icon.png')
                    : MenuButton(
                      onTap: () => Scaffold.of(context).openDrawer(),
                    ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(flex: 2),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
