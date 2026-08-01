import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';
import 'package:mal3ab/data/datasource/static/static.dart';

class OnboardingSlider extends GetView<OnboardingControllerImp> {
  const OnboardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Expanded(flex: 4, child: Image.asset(onboardingList[i].image)),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  onboardingList[i].title,
                  style: TextStylesTitles.xTitleLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  onboardingList[i].body,
                  style: TextStylesSub.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
