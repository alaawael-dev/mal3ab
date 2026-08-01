import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/data/datasource/static/static.dart';

class SliderDots extends StatelessWidget {
  const SliderDots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onboardingList.length,
            ((index) => AnimatedContainer(
              width: controller.currentPage == index ? 30 : 8,
              height: 8,
              margin: const EdgeInsets.only(right: 4),
              duration: const Duration(milliseconds: 900),
              decoration: BoxDecoration(
                color: controller.currentPage == index
                    ? AppColors.pitchGreen
                    : AppColors.greyGreen,
                borderRadius: BorderRadius.circular(20),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
