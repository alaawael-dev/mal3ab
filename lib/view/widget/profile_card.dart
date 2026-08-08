import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const ProfileCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
        side: const BorderSide(color: AppColors.darkPitch, width: 0.8),
      ),
      color: AppColors.greyGreen,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        leading: Icon(icon),
        title: Text(title, style: AppTextStyles.inputText),
        subtitle: Text(subTitle, style: const TextStyle(color: AppColors.grey)),
      ),
    );
  }
}
