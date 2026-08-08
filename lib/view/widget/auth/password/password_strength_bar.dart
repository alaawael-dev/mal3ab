import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class PasswordStrengthBar extends StatelessWidget {
  final int strength;
  final String text;
  const PasswordStrengthBar({
    super.key,
    required this.strength,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ...List.generate(
              3,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(right: 4),
                height: 4,
                width: 106,
                decoration: BoxDecoration(
                  color: index < strength
                      ? AppColors.pitchGreen
                      : AppColors.grey,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: AppTextStyles.inputText.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
