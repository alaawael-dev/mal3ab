import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/verify_code_controller.dart';

class VerifyOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerifyCodeImp.new);
  }
}
