import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/service/my_services.dart';

abstract class LangController extends GetxController {
  void changeLang(String langCode);
  void continuePressed();
}

class LangControllerImp extends LangController {
  late String selectedLang;
  Locale? language;
  MyServices myServices = Get.find();

  @override
  void changeLang(String langCode) {
    final Locale locale = Locale(langCode);
    myServices.sharedPref.setString("lang", langCode);
    selectedLang = langCode;
    Get.updateLocale(locale);
    update();
  }

  @override
  void continuePressed() {
    Get.offAllNamed(AppRoutes.onboarding);
  }

  @override
  void onInit() {
    final String? langCode = myServices.sharedPref.getString("lang");
    if (langCode != null) {
      selectedLang = langCode;
      language = Locale(langCode);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      selectedLang = language!.languageCode;
    }
    super.onInit();
  }
}
