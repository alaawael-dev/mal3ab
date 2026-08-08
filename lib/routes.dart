import 'package:get/get.dart';
import 'package:mal3ab/bindings/auth/verify_email_binding.dart';
import 'package:mal3ab/bindings/auth/login_binding.dart';
import 'package:mal3ab/bindings/auth/reset_password_binding.dart';
import 'package:mal3ab/bindings/auth/success_binding.dart';
import 'package:mal3ab/bindings/auth/verify_otp_binding.dart';
import 'package:mal3ab/core/middleware/middleware.dart';
import 'package:mal3ab/view/screen/auth/recovery/reset_password_page.dart';
import 'package:mal3ab/view/screen/auth/shared/success_page.dart';
import 'package:mal3ab/view/screen/auth/shared/verify_otp_page.dart';
import 'package:mal3ab/bindings/auth/signup_binding.dart';
import 'package:mal3ab/bindings/lang_binding.dart';
import 'package:mal3ab/bindings/onboarding_binding.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/view/screen/auth/recovery/verify_email_page.dart';
import 'package:mal3ab/view/screen/auth/signup_page.dart';
import 'package:mal3ab/view/screen/lang_page.dart';
import 'package:mal3ab/view/screen/auth/login_page.dart';
import 'package:mal3ab/view/screen/onboarding_screen.dart';

List<GetPage> routes = [
  GetPage(name: "/", page: () => const LangPage(), binding: LangBinding(), middlewares: [Middleware()]),
  GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen(), binding: OnboardingBinding()),
  // AUTH ROUTES
  GetPage(name: AppRoutes.login, page: () => const LoginPage(), binding: LoginBinding()),
  GetPage(name: AppRoutes.signup, page: () => const SignupPage(), binding: SignupBinding()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const VerifyEmailPage(), binding: VerifyEmailBinding()),
  GetPage(name: AppRoutes.verifyOtp, page: () => const VerifyOtpPage(),binding: VerifyOtpBinding()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPasswordPage(),binding: ResetPasswordBinding()),
  GetPage(name: AppRoutes.successPage, page: () => const SuccessPage(),binding: SuccessBinding()),
];
