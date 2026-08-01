import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';
import 'package:mal3ab/view/widget/onboarding/custom_button.dart';

class LangBottom extends StatelessWidget {
  final String buttonText;
  final String hintText;
  final void Function() onTap;
  const LangBottom({
    super.key,
    required this.buttonText,
    required this.hintText, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: buttonText,
          color: AppColors.darkPitch,
          onTap: onTap,
        ),
        const SizedBox(height: 12),
        Text(hintText, style: TextStylesSub.smallSubtitles),
        const SizedBox(height: 60),
      ],
    );
  }
}
