import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/reset_password_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/enums/input_type.dart';
import 'package:mal3ab/core/functions/validate_input.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/auth/common/custom_input.dart';
import 'package:mal3ab/view/widget/auth/password/password_req_visible.dart';
import 'package:mal3ab/view/widget/auth/password/password_strength_bar.dart';
import 'package:mal3ab/view/widget/custom_button.dart';

class ResetPasswordPage extends GetView<ResetPasswordControllerImp> {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => Center(
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 80),
                      SvgPicture.asset(
                        "assets/images/lock.svg",
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(height: 30),
                      const CustomHeader(
                        title: "RESET PASSWORD",
                        subtitle:
                            "Your identity is verified. Set a new password for \n your account.",
                      ),
                      const SizedBox(height: 50),
                      CustomInput(
                        focusNode: controller.focusNode,
                        onChanged: controller.onPasswordChange,
                        validate: (value) => validateInput(
                          value ?? " ",
                          20,
                          10,
                          InputType.password,
                        ),
                        controller: controller.passCon,
                        inputName: "NEW PASSWORD",
                        hintText: "●●●●●●●●",
                        obscureText: controller.obscure[0],
                        preIcon: const Icon(Icons.lock_outline),
                        icon: Icon(
                          controller.obscure[0]
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        iconOnTap: () {
                          controller.togglePassword(0);
                        },
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      CustomInput(
                        validate: (value) => validateInput(
                          value ?? " ",
                          20,
                          10,
                          InputType.password,
                        ),
                        controller: controller.rePassCon,
                        inputName: "CONFIRM NEW PASSWORD",
                        hintText: "●●●●●●●●",
                        obscureText: controller.obscure[1],
                        preIcon: const Icon(Icons.lock_outline),
                        icon: Icon(
                          controller.obscure[1]
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        iconOnTap: () {
                          controller.togglePassword(1);
                        },
                      ),
                      const SizedBox(height: 30),

                      CustomButton(
                        text: "RESET PASSWORD",
                        color: AppColors.darkPitch,
                        onTap: controller.navSuccess,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
