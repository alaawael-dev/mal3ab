import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/enums/otp_flow.dart';

abstract class VerifyEmailController extends GetxController {
  void checkEmail();
  void navOtp();
  void navLogin();
}

class VerifyEmailControllerImp extends VerifyEmailController {
  late TextEditingController mailCon;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool validate() {
    return formState.currentState?.validate() ?? false;
  }

  @override
  void navLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void navOtp() {
    if (!validate()) return;

    Get.offAllNamed(
      AppRoutes.verifyOtp,
      arguments: {"flow": OtpFlow.resetPassword},
    );
  }

  @override
  void onInit() {
    mailCon = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    mailCon.dispose();
    super.onClose();
  }

  @override
  void checkEmail() {}
}
