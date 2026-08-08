import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/verify_email_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/enums/input_type.dart';
import 'package:mal3ab/core/functions/validate_input.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/auth/common/custom_input.dart';
import 'package:mal3ab/view/widget/custom_button.dart';

class VerifyEmailPage extends GetView<VerifyEmailControllerImp> {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Center(
              child: Form(
                key: controller.formState,
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    SvgPicture.asset(
                      "assets/images/lock.svg",
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 30),
                    const CustomHeader(
                      title: "FORGOT PASSWORD?",
                      subtitle: "Please enter your email",
                    ),
                    CustomInput(
                      validate: (value) =>
                          validateInput(value!, 30, 10, InputType.email),
                      controller: controller.mailCon,
                      inputName: "EMAIL",
                      hintText: "you@example.com",
                      obscureText: false,
                      preIcon: const Icon(Icons.mail_outline),
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: "SEND RESET LINK",
                      color: AppColors.pitchGreen,
                      onTap: () {
                        controller.navOtp();
                      },
                      textColor: AppColors.nightBg,
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                      text: "BACK TO LOGIN",
                      color: AppColors.turfDark,
                      onTap: () {
                        controller.navLogin();
                      },
                      textColor: AppColors.grey,
                      borderSide: const BorderSide(
                        color: AppColors.greyGreen,
                        width: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
