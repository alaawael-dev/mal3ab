import 'package:flutter/material.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String inputName;
  final String hintText;
  final Widget? icon;
  final Widget preIcon;
  final void Function()? iconOnTap;
  final bool obscureText;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  const CustomInput({
    super.key,
    required this.controller,
    required this.inputName,
    required this.hintText,
    required this.obscureText,
    this.icon,
    this.iconOnTap,
    required this.preIcon,
    required this.validate,
    this.onChanged,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputName,
            style: TextStylesSub.bodyMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            focusNode: focusNode,
            onChanged: onChanged,
            validator: validate,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: preIcon,
              prefixIconColor: AppColors.grey,
              suffixIcon: icon == null
                  ? null
                  : IconButton(
                      onPressed: iconOnTap,
                      icon: icon!,
                      color: AppColors.grey,
                    ),
              hintText: hintText,
              hintStyle: AppTextStyles.inputHint,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.greyGreen,
                  width: 1.8,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.pitchGreen,
                  width: 2.2,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
