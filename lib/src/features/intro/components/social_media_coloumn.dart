import 'package:flutter/material.dart';
import 'package:portfolio/src/features/intro/components/social_icon.dart'
    show SocialMediaIcon;
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          onTap:
              () => launchUrl(
                Uri.parse(
                  "https://www.linkedin.com/in/altamash-husain-aa39231ba/",
                ),
              ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse("https://github.com/GitFromGeeks")),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/insta.svg',
          onTap:
              () => launchUrl(
                Uri.parse("https://www.instagram.com/altamash_husain__/"),
              ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/twitter.svg',
          onTap: () => launchUrl(Uri.parse("https://x.com/AltamashDev")),
        ),
      ],
    );
  }
}
