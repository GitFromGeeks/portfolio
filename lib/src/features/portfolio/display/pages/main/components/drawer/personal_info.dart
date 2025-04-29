import 'package:flutter/material.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart';

import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        AreaInfoText(title: 'Contact', text: '+91 8586874112'),
        AreaInfoText(title: 'Email', text: 'mohammadaltamashusain@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@altamash-husain'),
        AreaInfoText(title: 'Github', text: '@GitFromGeeks'),
        SizedBox(height: defaultPadding),
        Text('Skills', style: TextStyle(color: Colors.white)),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
