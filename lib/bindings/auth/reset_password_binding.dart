import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ResetPasswordControllerImp.new);
  }
}
