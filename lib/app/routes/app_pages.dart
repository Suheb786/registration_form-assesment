import 'package:get/get.dart';
import 'package:registration_form/app/modules/register/bindings/register_binding.dart';

import '../modules/register/views/register_view.dart';
import '../modules/yourInfo/bindings/your_info_binding.dart';
import '../modules/yourInfo/views/your_info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORM;

  static final routes = [
    GetPage(
      name: _Paths.FORM,
      page: () => Register(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_INFO,
      page: () => const YourInfoView(),
      binding: YourInfoBinding(),
    ),
  ];
}
