import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class AuthTextAction extends StatelessWidget {
  final String text;
  final String tappedText;
  final void Function() onTap;
  const AuthTextAction({
    super.key,
    required this.text,
    required this.tappedText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStylesSub.labelMedium.copyWith(color: AppColors.grey),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            tappedText,
            style: TextStylesSub.labelMedium.copyWith(
              color: AppColors.pitchGreen,
            ),
          ),
        ),
      ],
    );
  }
}
