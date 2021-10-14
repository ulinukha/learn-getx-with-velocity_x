import 'package:get/get.dart';
import 'package:mobile/app/modules/home/controllers/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
