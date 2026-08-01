import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/lang_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/view/widget/language/lang_bottom.dart';
import 'package:mal3ab/view/widget/language/lang_button.dart';
import 'package:mal3ab/view/widget/language/lang_header.dart';

class LangPage extends GetView<LangControllerImp> {
  const LangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.turfDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 70),
                LangHeader(title: "title".tr, subtitle: "choose".tr),
                const SizedBox(height: 140),
                GetBuilder<LangControllerImp>(
                  builder: (controller) => Column(
                    children: [
                      LangButton(
                        selected: controller.selectedLang == "en",
                        title: "lang".tr,
                        subtitle: "continue".tr,
                        onTap: () {
                          controller.changeLang("en");
                        },
                      ),
                      LangButton(
                        selected: controller.selectedLang == "ar",
                        title: "langAr".tr,
                        subtitle: "continueAr".tr,
                        onTap: () {
                          controller.changeLang("ar");
                        },
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                LangBottom(
                  onTap: () {
                    controller.continuePressed();
                  },
                  buttonText: "continue_button".tr,
                  hintText: "hint".tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
