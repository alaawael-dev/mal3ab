import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';

class CheckContainer extends StatelessWidget {
  const CheckContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.pitchGreen,
        boxShadow: [
          BoxShadow(
            color: AppColors.pitchGreen.withValues(alpha: 0.45),
            blurRadius: 45,
            spreadRadius: 10,
          ),
        ],
      ),
      child: const Icon(Icons.check, color: AppColors.turfDark, size: 80),
    );
  }
}
