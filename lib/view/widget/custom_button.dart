import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onTap;
  final Color? textColor;
  final BorderSide? borderSide;
  final bool enabled;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
    this.textColor,
    this.borderSide,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 350,
      child: MaterialButton(
        disabledColor: AppColors.greyGreen,
        elevation: 0,
        onPressed: enabled ? onTap : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
          side: borderSide ?? BorderSide.none,
        ),
        color: color,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

// Get.offAllNamed(AppRoutes.onboarding);
