import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/verify_email_controller.dart';

class VerifyEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerifyEmailControllerImp.new);
  }
}
