import 'package:get/get.dart';
import 'package:mal3ab/bindings/lang_binding.dart';
import 'package:mal3ab/bindings/onboarding_binding.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/view/screen/lang_page.dart';
import 'package:mal3ab/view/screen/login.dart';
import 'package:mal3ab/view/screen/onboarding_screen.dart';

List<GetPage> routes = [
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(
    name: AppRoutes.onboarding,
    page: () => const OnboardingScreen(),
    binding: OnboardingBinding(),
  ),
  GetPage(
    name: AppRoutes.languagePage,
    page: () => const LangPage(),
    binding: LangBinding(),
  ),
];
