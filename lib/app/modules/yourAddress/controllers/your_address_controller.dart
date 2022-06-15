import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/snackbar.dart';

class YourAddressController extends GetxController {
  final addressFormKey = GlobalKey<FormState>();
  TextEditingController addressController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  var intialSelectedState = "".obs;

  List<String> stateList = [
    "Maharastra",
    "Gujarat",
    "Karnataka",
    "MadhyaPradesh",
    "Delhi",
    "Others"
  ];

//* validation ------->>>>>

  String? validAddress(adrs) {
    if (adrs.toString().length < 3) {
      return "Please enter your Address";
    }
  }

  String? validLandmark(land) {
    if (land.toString().length < 3) {
      return "Please enter Nearby Location as Landmark";
    }
  }

  String? validCity(city) {
    if (city.toString().length < 3) {
      return "Please enter your city";
    }
  }

  String? validPinCode(zip) {
    if (zip.toString().length < 6) {
      return "Please enter 6 Digit zip code";
    }
  }

  validateaddressDropDownFields() {
    if (intialSelectedState.value.isEmpty) {
      showRedSnackbar(
        "Empty Selection Fields",
        "Selection of your state is required",
      );
    }
  }

  checkAddress() {
    if (addressFormKey.currentState!.validate() ||
        validateaddressDropDownFields()) {
      print("congratulation!!");
    }
  }

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
