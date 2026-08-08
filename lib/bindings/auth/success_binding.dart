import 'package:get/get.dart';
import 'package:mal3ab/controller/auth/success_controller.dart';

class SuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SuccessControllerImp.new);
  }
}
