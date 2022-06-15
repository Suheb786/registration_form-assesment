import 'package:get/get.dart';

import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/yourAddress/bindings/your_address_binding.dart';
import '../modules/yourAddress/views/your_address_view.dart';
import '../modules/yourInfo/bindings/your_info_binding.dart';
import '../modules/yourInfo/views/your_info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.YOUR_INFO;

  static final routes = [
    GetPage(
      name: _Paths.Register,
      page: () => Register(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_INFO,
      page: () => const YourInfoView(),
      binding: YourInfoBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_ADDRESS,
      page: () => const YourAddressView(),
      binding: YourAddressBinding(),
    ),
  ];
}
