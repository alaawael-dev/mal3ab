import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/enums/otp_flow.dart';

abstract class VerifyCode extends GetxController {
  void onOtpChanged(String val);
  void verifyOtp();
}

class VerifyCodeImp extends VerifyCode {
  late TextEditingController otpCon;
  late OtpFlow flow;

  String otp = "";

  @override
  void onInit() {
    flow = Get.arguments["flow"];
    otpCon = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    otpCon.dispose();
    super.onClose();
  }

  @override
  void onOtpChanged(String val) {
    update();
  }

  bool get canVerify => otpCon.text.length == 4;

  @override
  void verifyOtp() {
    if (!canVerify) return;
    switch (flow) {
      case OtpFlow.signup:
        Get.offAllNamed(AppRoutes.successPage);
        break;
      case OtpFlow.resetPassword:
        Get.offAllNamed(AppRoutes.resetPassword);
        break;
    }
  }
}
