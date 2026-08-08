import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/service/my_services.dart';

class Middleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPref.getBool("onboarding") == true) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
