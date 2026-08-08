import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/enums/otp_flow.dart';
import 'package:mal3ab/core/functions/password_strength.dart';

abstract class SignupController extends GetxController {
  void navLogin();
  void navOtp();
  void togglePassword(int index);
  void onPasswordChange(String value);
}

class SignupControllerImp extends SignupController {
  // Controllers
  late TextEditingController emailCon;
  late TextEditingController nameCon;
  late TextEditingController passCon;
  late TextEditingController passTwoCon;
  late FocusNode focusNode;

  bool showPasswordReq = false;

  String password = "";

  List<bool> obscure = [true, true];
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  // Password

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
  void onPasswordChange(String value) {
    password = value;
    update();
  }

  @override
  void togglePassword(int index) {
    obscure[index] = !obscure[index];
    update();
  }
  // End Password

  bool validate() {
    return formState.currentState?.validate() ?? false;
  }

  @override
  void navLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void navOtp() {
    if (!validate()) return;
    Get.offAllNamed(AppRoutes.verifyOtp, arguments: {"flow": OtpFlow.signup});
  }

  @override
  void onInit() {
    emailCon = TextEditingController();
    nameCon = TextEditingController();
    passCon = TextEditingController();
    passTwoCon = TextEditingController();
    focusNode = FocusNode();
    focusNode.addListener(() {
      showPasswordReq = focusNode.hasFocus;
      update();
    });
    super.onInit();
  }

  @override
  void onClose() {
    emailCon.dispose();
    nameCon.dispose();
    passCon.dispose();
    passTwoCon.dispose();
    focusNode.dispose();
    super.onClose();
  }
}
