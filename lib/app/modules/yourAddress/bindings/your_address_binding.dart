import 'package:get/get.dart';

import '../controllers/your_address_controller.dart';

class YourAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourAddressController>(
      () => YourAddressController(),
    );
  }
}
