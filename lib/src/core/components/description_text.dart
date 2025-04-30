import 'package:flutter/material.dart';
import 'package:portfolio/src/core/old_sketch/responsive.dart' show Responsive;

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I\'m a Full Stack Software Developer with${Responsive.isLargeMobile(context) ? '\n' : ''} strong focus on${!Responsive.isLargeMobile(context) ? '\n' : ''}handling every step from design , development and deployment.\nfrom  Mobile Apps to Backend',
          maxLines: 10,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
