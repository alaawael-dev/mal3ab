import 'package:get/instance_manager.dart';
import 'package:mal3ab/controller/lang_controller.dart';

class LangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LangControllerImp.new);
  }
}
