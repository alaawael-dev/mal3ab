import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/functions/password_strength.dart';

abstract class ResetPasswordController extends GetxController {
  void togglePassword(int index);
  void navSuccess();
  void onPasswordChange(String value);
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController passCon;
  late TextEditingController rePassCon;
  late FocusNode focusNode;
  List<bool> obscure = [true, true];

  String password = "";
  bool showPasswordReq = false;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool validate() {
    return formState.currentState?.validate() ?? false;
  }

  @override
  void onInit() {
    passCon = TextEditingController();
    rePassCon = TextEditingController();
    focusNode = FocusNode();
    focusNode.addListener(() {
      showPasswordReq = focusNode.hasFocus;
      update();
    });
    super.onInit();
  }

  @override
  void onClose() {
    passCon.dispose();
    rePassCon.dispose();
    focusNode.dispose();
    super.onClose();
  }

  int get passwordStrength => PasswordStrength.score(password);

  bool get hasMinLength => PasswordStrength.hasMinLength(password);

  bool get hasUppercase => PasswordStrength.hasUppercase(password);

  bool get hasLowerCase => PasswordStrength.hasLowercase(password);

  bool get hasNumber => PasswordStrength.hasNumber(password);

  bool get hasSpecial => PasswordStrength.hasSpecial(password);
  int get passwordLevel => PasswordStrength.level(password);

  String get passwordLevelText => PasswordStrength.levelText(password);

  bool get showPasswordStrength => passCon.text.isNotEmpty;

  @override
  void togglePassword(int index) {
    obscure[index] = !obscure[index];
    update();
  }

  @override
  void navSuccess() {
    if (!validate()) return;
    Get.offAllNamed(AppRoutes.successPage);
  }

  @override
  void onPasswordChange(String value) {
    password = value;
    update();
  }
}
