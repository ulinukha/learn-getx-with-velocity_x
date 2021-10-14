import 'package:get/get.dart';
import 'package:mobile/app/modules/details/controllers/controller.dart';
import 'package:mobile/app/modules/home/controllers/controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(),
    );
  }
}
