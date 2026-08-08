import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/signup_controller.dart';
import 'package:mal3ab/core/enums/input_type.dart';
import 'package:mal3ab/core/functions/validate_input.dart';
import 'package:mal3ab/view/widget/auth/common/custom_input.dart';
import 'package:mal3ab/view/widget/auth/password/password_req_visible.dart';
import 'package:mal3ab/view/widget/auth/password/password_strength_bar.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupControllerImp>(
      builder: (controller) => Form(
        key: controller.formState,
        child: Column(
          children: [
            CustomInput(
              validate: (value) =>
                  validateInput(value!, 20, 10, InputType.username),
              controller: controller.nameCon,
              inputName: "FULL NAME",
              hintText: "Alaa Wael",
              obscureText: false,
              preIcon: const Icon(Icons.person_outline),
            ),
            CustomInput(
              validate: (value) =>
                  validateInput(value!, 20, 10, InputType.email),
              controller: controller.emailCon,
              inputName: "EMAIL",
              hintText: "you@example.com",
              obscureText: false,
              preIcon: const Icon(Icons.mail_outline),
            ),
            CustomInput(
              focusNode: controller.focusNode,
              validate: (value) =>
                  validateInput(value!, 20, 10, InputType.password),
              onChanged: controller.onPasswordChange,
              controller: controller.passCon,
              inputName: "PASSWORD",
              hintText: "●●●●●●●●",
              obscureText: controller.obscure[0],
              preIcon: const Icon(Icons.lock_outline),
              icon: Icon(
                controller.obscure[0] ? Icons.visibility_off : Icons.visibility,
              ),
              iconOnTap: () {
                controller.togglePassword(0);
              },
            ),
            Visibility(
              visible: controller.showPasswordStrength,
              child: PasswordStrengthBar(
                strength: controller.passwordLevel,
                text: controller.passwordLevelText,
              ),
            ),
            PasswordReqVisible(
              visible: controller.showPasswordReq,
              hasMinLength: controller.hasMinLength,
              hasUppercase: controller.hasUppercase,
              hasLowerCase: controller.hasLowerCase,
              hasNumber: controller.hasNumber,
              hasSpecial: controller.hasSpecial,
            ),
            CustomInput(
              validate: (value) =>
                  validateInput(value!, 20, 10, InputType.password),
              controller: controller.passTwoCon,
              inputName: "CONFIRM PASSWORD",
              hintText: "●●●●●●●●",
              obscureText: controller.obscure[1],
              preIcon: const Icon(Icons.lock_outline),
              icon: Icon(
                controller.obscure[1] ? Icons.visibility_off : Icons.visibility,
              ),
              iconOnTap: () {
                controller.togglePassword(1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
