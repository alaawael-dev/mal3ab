import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/verify_code_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/auth/password/otp_widget.dart';
import 'package:mal3ab/view/widget/auth/common/auth_text_action.dart';
import 'package:mal3ab/view/widget/custom_button.dart';

class VerifyOtpPage extends GetView<VerifyCodeImp> {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyCodeImp>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const CustomHeader(
                title: "ENTER CODE",
                subtitle: "We sent a 4-digit code to +20 10 1234 5678",
              ),
              const SizedBox(height: 60),
              OtpWidget(
                controller: controller.otpCon,
                onChanged: controller.onOtpChanged,
                onCompleted: (_) => controller.verifyOtp(),
              ),
              const SizedBox(height: 30),
              AuthTextAction(
                text: "Didn't get it? ",
                tappedText: "Resend",
                onTap: () {},
              ),
              const SizedBox(height: 30),
              GetBuilder<VerifyCodeImp>(
                builder: (controller) => CustomButton(
                  enabled: controller.canVerify,
                  text: "VERIFY AND CONTINUE",
                  color: AppColors.darkPitch,
                  textColor: AppColors.nightBg,
                  onTap: controller.verifyOtp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
