import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

class OtpWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;
  const OtpWidget({
    super.key,
    required this.controller,
    this.onChanged,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      onChanged: onChanged,
      controller: controller,
      defaultPinTheme: PinTheme(
        textStyle: const TextStyle(fontSize: 25),
        width: 58,
        height: 76,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyGreen),
          color: AppColors.darkerGreen,
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      focusedPinTheme: PinTheme(
        textStyle: const TextStyle(fontSize: 25),
        width: 58,
        height: 76,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pitchGreen),
          color: AppColors.darkerGreen,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      // controller: otpController,
      length: 4,

      onCompleted: (pin) {},
    );
  }
}
