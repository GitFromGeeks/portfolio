import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/old_sketch/model/project_model.dart' show projectList;

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text(
              'Live Android/iOS',
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              icon: Icon(FontAwesomeIcons.appStore),
            ),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: const Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
