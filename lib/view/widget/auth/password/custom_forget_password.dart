import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class ForgetPassword extends StatelessWidget {
  final void Function() onTap;
  const ForgetPassword({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.bottomEnd,
      child: InkWell(
        onTap: onTap,
        child: Text(
          "Forgot Password?",
          style: TextStylesSub.smallSubtitles.copyWith(
            color: AppColors.pitchGreen,
          ),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
