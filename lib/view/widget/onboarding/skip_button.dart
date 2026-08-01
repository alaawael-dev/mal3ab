import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class SkipButton extends GetView<OnboardingControllerImp> {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.skip();
      },
      child: Text("skip".tr, style: AppTextStyles.skipLabel),
    );
  }
}
