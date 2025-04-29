import 'package:flutter/material.dart';
import 'package:portfolio/src/core/helpers/constants/app_themes.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.white)),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.1,
            child: Text(overflow: TextOverflow.ellipsis, text),
          ),
        ],
      ),
    );
  }
}
