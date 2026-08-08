import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/signup_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/auth/signup/signup_form.dart';
import 'package:mal3ab/view/widget/auth/common/auth_text_action.dart';
import 'package:mal3ab/view/widget/custom_button.dart';

class SignupPage extends GetView<SignupControllerImp> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 40),
            child: GetBuilder<SignupControllerImp>(
              builder: (controller) => Column(
                children: [
                  const SizedBox(height: 20),
                  const CustomHeader(
                    title: "CREATE ACCOUNT",
                    subtitle: "Join the Mal3ab community",
                  ),
                  const SizedBox(height: 20),
                  const SignupForm(),
                  const SizedBox(height: 28),
                  CustomButton(
                    text: "CREATE ACCOUNT",
                    color: AppColors.pitchGreen,
                    onTap: () {
                      controller.navOtp();
                    },
                  ),
                  const SizedBox(height: 20),
                  AuthTextAction(
                    text: "Already have an account?  ",
                    tappedText: "Log In",
                    onTap: () {
                      controller.navLogin();
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
