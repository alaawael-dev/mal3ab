import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class LangHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const LangHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStylesTitles.xTitleLarge.copyWith(fontSize: 60)),
        Text(subtitle, style: TextStylesSub.bodyLarge),
      ],
    );
  }
}
