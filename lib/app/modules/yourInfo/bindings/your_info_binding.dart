import 'package:get/get.dart';

import '../controllers/your_info_controller.dart';

class YourInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourInfoController>(
      () => YourInfoController(),
    );
  }
}
