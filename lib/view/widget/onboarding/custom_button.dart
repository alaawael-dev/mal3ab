import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';

class CustomButton extends GetView<OnboardingControllerImp> {
  final String text;
  final Color color;
  final void Function() onTap ;
  const CustomButton({super.key, required this.text, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 350,
      child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        color: color,
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
          // Get.offAllNamed(AppRoutes.onboarding);
