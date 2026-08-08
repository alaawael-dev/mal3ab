import 'package:flutter/material.dart';
import 'package:mal3ab/view/widget/auth/password/password_required.dart';

class PasswordReqVisible extends StatelessWidget {
  final bool visible;
  final bool hasMinLength;
  final bool hasUppercase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecial;

  const PasswordReqVisible({
    super.key,
    required this.visible,
    required this.hasMinLength,
    required this.hasUppercase,
    required this.hasLowerCase,
    required this.hasNumber,
    required this.hasSpecial,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: Visibility(
        visible: visible,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PasswordRequirement(
              passed: hasMinLength,
              text: "At least 10 characters",
            ),
            PasswordRequirement(
              passed: hasUppercase,
              text: "One uppercase letter",
            ),
            PasswordRequirement(
              passed: hasLowerCase,
              text: "One lowercase letter",
            ),
            PasswordRequirement(
              passed: hasNumber,
              text: "One number",
            ),
            PasswordRequirement(
              passed: hasSpecial,
              text: "One special character",
            ),
          ],
        ),
      ),
    );
  }
}