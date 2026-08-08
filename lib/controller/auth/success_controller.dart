import 'package:get/get.dart';
import 'package:mal3ab/core/constants/routes.dart';

abstract class SuccessController extends GetxController {
  void navLogin();
}

class SuccessControllerImp extends SuccessController {
  @override
  void navLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
