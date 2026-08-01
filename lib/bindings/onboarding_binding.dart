import 'package:get/get.dart';
import 'package:mal3ab/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(OnboardingControllerImp.new);
  }
}
