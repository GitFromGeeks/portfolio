import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart'
    show defaultPadding;
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse(
                  "https://www.linkedin.com/in/altamash-husain-aa39231ba/",
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse("https://github.com/GitFromGeeks"));
            },
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
