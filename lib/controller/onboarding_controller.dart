import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/service/my_services.dart';
import 'package:mal3ab/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  void next();

  void skip();

  void onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  final MyServices myServices = Get.find();

  int currentPage = 0;
  late PageController pageController;

  bool get isEnglish => myServices.sharedPref.getString("lang") == "en";

  @override
  void next() {
    currentPage++;

    if (currentPage > onboardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void skip() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
