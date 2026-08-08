import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SignupControllerImp.new);
  }
}
