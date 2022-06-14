import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:registration_form/app/components/custom_appbar.dart';
import 'package:registration_form/app/widgets/custom_dropdown_textField.dart';
import 'package:registration_form/app/widgets/custom_text_form_fileld.dart';

import '../controllers/your_info_controller.dart';

class YourInfoView extends GetView<YourInfoController> {
  const YourInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Your Info"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Text(
              "Educational Info",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Obx(() => CustomDropdownTextFormField(
                  hintText: "Select Your Qualification",
                  titleText: "Education*",
                  dropDownListOfItems: controller.qualificationList,
                  onChanged: (selectedCourse) {
                    controller.intialSelectedCourse.value =
                        selectedCourse ?? "";
                  },
                  isEmpty: controller.intialSelectedCourse.value.isEmpty
                      ? true
                      : false,
                  value: controller.intialSelectedCourse.value.isEmpty
                      ? null
                      : controller.intialSelectedCourse.value,
                )),
            Obx(() => CustomDropdownTextFormField(
                  hintText: "Enter Year of Passing",
                  titleText: "Year of Passing*",
                  dropDownListOfItems: controller.yearList,
                  onChanged: (selectedyear) {
                    controller.intialSelectedYear.value = selectedyear ?? "";
                  },
                  isEmpty: controller.intialSelectedYear.value.isEmpty
                      ? true
                      : false,
                  value: controller.intialSelectedYear.value.isEmpty
                      ? null
                      : controller.intialSelectedYear.value,
                )),
            CustomTextformField(
              labelText: "Grade*",
              hintText: "Enter Your Grade of Percentage",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                color: Colors.black12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
