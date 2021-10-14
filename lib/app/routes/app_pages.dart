import 'package:get/get.dart';
import 'package:mobile/app/modules/details/bindings/binding.dart';
import 'package:mobile/app/modules/details/views/view.dart';
import 'package:mobile/app/modules/home/bindings/binding.dart';
import 'package:mobile/app/modules/home/views/view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const DETAILS = Routes.DETAILS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () => DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}
