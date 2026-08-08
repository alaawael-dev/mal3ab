import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:mal3ab/core/constants/routes.dart';

abstract class LoginController extends GetxController {
  void login();
  void navforgetPassword();
  void navSignup();
  void togglePassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailCon;
  late TextEditingController passwordCon;
  bool obscureText = true;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool validate() {
    return formState.currentState?.validate() ?? false;
  }

  @override
  void login() {
    if (!validate()) return;
  }

  @override
  void navSignup() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void navforgetPassword() {
    Get.offNamed(AppRoutes.forgetPassword);
  }

  @override
  void togglePassword() {
    obscureText = !obscureText;
    update();
  }

  @override
  void onInit() {
    emailCon = TextEditingController();
    passwordCon = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailCon.dispose();
    passwordCon.dispose();
    super.onClose();
  }
}
