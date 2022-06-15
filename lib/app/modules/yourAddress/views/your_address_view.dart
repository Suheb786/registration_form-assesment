import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:registration_form/app/components/custom_appbar.dart';
import 'package:registration_form/app/widgets/customButton.dart';
import 'package:registration_form/app/widgets/custom_text_form_fileld.dart';

import '../../../widgets/custom_dropdown_textField.dart';
import '../controllers/your_address_controller.dart';

class YourAddressView extends GetView<YourAddressController> {
  const YourAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Your Address"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: controller.addressFormKey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
              child: Column(
                children: [
                  CustomTextformField(
                    controller: controller.addressController,
                    validator: (adrs) => controller.validAddress(adrs),
                    hintText: "Adress",
                    prefixIcon: Icon(
                      Icons.location_city_rounded,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    controller: controller.landmarkController,
                    validator: (land) => controller.validLandmark(land),
                    hintText: "Landmark",
                    prefixIcon: Icon(
                      Icons.location_city_rounded,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    controller: controller.cityController,
                    validator: (city) => controller.validCity(city),
                    hintText: "City",
                    prefixIcon: Icon(
                      Icons.location_city_rounded,
                      color: Color(0xff000075),
                    ),
                  ),
                  Obx(() => CustomDropdownTextFormField(
                        hintText: "Select Your State",
                        titleText: "State*",
                        dropDownListOfItems: controller.stateList,
                        onChanged: (selectedDomain) {
                          controller.intialSelectedState.value =
                              selectedDomain ?? "";
                        },
                        isEmpty: controller.intialSelectedState.value.isEmpty
                            ? true
                            : false,
                        value: controller.intialSelectedState.value.isEmpty
                            ? null
                            : controller.intialSelectedState.value,
                      )),
                  CustomTextformField(
                    controller: controller.pincodeController,
                    validator: (zip) => controller.validPinCode(zip),
                    hintText: "Pin Code",
                    prefixIcon: Icon(
                      Icons.location_city_rounded,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomButton(
                      navigation: (() => controller.checkAddress()),
                      text: "Submit",
                      textColor: Colors.white,
                      border: Border.all(color: Color(0xff000075)),
                      backgroundColor: Color(0xff000075))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
