import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/login_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';
import 'package:mal3ab/core/enums/input_type.dart';
import 'package:mal3ab/core/functions/validate_input.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/auth/common/custom_input.dart';
import 'package:mal3ab/view/widget/auth/password/custom_forget_password.dart';
import 'package:mal3ab/view/widget/auth/common/auth_text_action.dart';
import 'package:mal3ab/view/widget/custom_button.dart';

class LoginPage extends GetView<LoginControllerImp> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "MAL3AB",
          style: TextStylesTitles.titleMedium.copyWith(
            color: AppColors.pitchGreen,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            child: Form(
              key: controller.formState,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const CustomHeader(
                    title: "WELCOME BACK",
                    subtitle: "Log in to book your next match",
                  ),
                  const SizedBox(height: 80),
                  CustomInput(
                    validate: (value) =>
                        validateInput(value ?? " ", 30, 10, InputType.email),
                    controller: controller.emailCon,
                    inputName: "EMAIL",
                    hintText: "you@example.com",
                    icon: null,
                    obscureText: false,
                    preIcon: const Icon(Icons.email_outlined),
                  ),
                  GetBuilder<LoginControllerImp>(
                    builder: (_) => CustomInput(
                      validate: (value) => validateInput(
                        value ?? " ",
                        20,
                        10,
                        InputType.password,
                      ),
                      controller: controller.passwordCon,
                      inputName: "PASSWORD",
                      hintText: "●●●●●●●●",
                      icon: Icon(
                        controller.obscureText
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      iconOnTap: () {
                        controller.togglePassword();
                      },
                      obscureText: controller.obscureText,
                      preIcon: const Icon(Icons.lock_outline),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ForgetPassword(
                    onTap: () {
                      controller.navforgetPassword();
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    text: "LOG IN",
                    color: AppColors.pitchGreen,
                    onTap: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(height: 120),
                  AuthTextAction(
                    text: "Don't have an account?  ",
                    tappedText: "Sign Up",
                    onTap: () {
                      controller.navSignup();
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
