import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourAddressController extends GetxController {
  var intialSelectedState = "".obs;

  List<String> stateList = [
    "Maharastra",
    "Gujarat",
    "Karnataka",
    "MadhyaPradesh",
    "Delhi",
    "Others"
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
