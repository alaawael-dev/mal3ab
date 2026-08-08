import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/success_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/view/widget/auth/common/check_container.dart';
import 'package:mal3ab/view/widget/auth/common/custom_header.dart';
import 'package:mal3ab/view/widget/custom_button.dart';
import 'package:mal3ab/view/widget/profile_card.dart';

class SuccessPage extends GetView<SuccessControllerImp> {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const CheckContainer(),
              const SizedBox(height: 60),
              const CustomHeader(
                title: "ALL SET!",
                subtitle:
                    "Your account is ready. Time to find your next \nmatch.",
              ),
              const SizedBox(height: 40),
              const ProfileCard(
                title: "ALAA WAEL",
                subTitle: "you@example.com",
                icon: Icons.person,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: "START EXPLORING",
                color: AppColors.pitchGreen,
                onTap: controller.navLogin,
                textColor: AppColors.nightBg,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
