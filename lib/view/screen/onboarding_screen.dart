import 'package:get/get.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mal3ab/view/widget/onboarding/custom_button.dart';
import 'package:mal3ab/view/widget/onboarding/onboarding_slider.dart';
import 'package:mal3ab/view/widget/onboarding/skip_button.dart';
import 'package:mal3ab/view/widget/onboarding/slider_dots.dart';

class OnboardingScreen extends GetView<OnboardingControllerImp> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.turfDark,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(flex: 3, child: OnboardingSlider()),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const SizedBox(height: 14),
                      const SliderDots(),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "next".tr,
                        color: AppColors.darkPitch,
                        onTap: () {
                          controller.next();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            controller.isEnglish
                ? const Positioned(top: 10, right: 30, child: SkipButton())
                : const Positioned(top: 10, left: 30, child: SkipButton()),
          ],
        ),
      ),
    );
  }
}
