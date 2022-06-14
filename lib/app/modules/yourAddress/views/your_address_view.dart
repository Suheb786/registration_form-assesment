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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextformField(
              hintText: "Adress",
              prefixIcon: Icon(
                Icons.location_city_rounded,
                color: Color(0xff000075),
              ),
            ),
            CustomTextformField(
              hintText: "Landmark",
              prefixIcon: Icon(
                Icons.location_city_rounded,
                color: Color(0xff000075),
              ),
            ),
            CustomTextformField(
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
                    controller.intialSelectedState.value = selectedDomain ?? "";
                  },
                  isEmpty: controller.intialSelectedState.value.isEmpty
                      ? true
                      : false,
                  value: controller.intialSelectedState.value.isEmpty
                      ? null
                      : controller.intialSelectedState.value,
                )),
            CustomTextformField(
              hintText: "Pin Code",
              prefixIcon: Icon(
                Icons.location_city_rounded,
                color: Color(0xff000075),
              ),
            ),
            CustomButton(
                text: "Submit",
                textColor: Colors.white,
                border: Border.all(color: Color(0xff000075)),
                backgroundColor: Color(0xff000075))
          ],
        ),
      ),
    );
  }
}
