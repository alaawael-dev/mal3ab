import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';

class PasswordRequirement extends StatelessWidget {
  final bool passed;
  final String text;

  const PasswordRequirement({
    super.key,
    required this.passed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          passed ? Icons.check_circle : Icons.radio_button_unchecked,
          size: 18,
          color: passed ? AppColors.pitchGreen : Colors.grey,
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
