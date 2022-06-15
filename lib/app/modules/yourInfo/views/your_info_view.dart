import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:registration_form/app/components/custom_appbar.dart';
import 'package:registration_form/app/widgets/customButton.dart';
import 'package:registration_form/app/widgets/custom_dropdown_textField.dart';
import 'package:registration_form/app/widgets/custom_text_form_fileld.dart';

import '../controllers/your_info_controller.dart';

class YourInfoView extends GetView<YourInfoController> {
  const YourInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Your Info"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: controller.yourInfoFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Educational Info",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
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
                        controller.intialSelectedYear.value =
                            selectedyear ?? "";
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
                  controller: controller.gradeController,
                  validator: (grd) => controller.validGrade(grd),
                  hintText: "Enter Your Grade of Percentage",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    color: Colors.black12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Professional Info",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                CustomTextformField(
                  
                  controller: controller.experienceController,
                  validator: (exp) => controller.validExperience(exp),
                  keyboardType: TextInputType.number,
                  labelText: "Experience*",
                  hintText: "Enter Year of Experience",
                ),
                Obx(() => CustomDropdownTextFormField(
                      hintText: "Select Designation",
                      titleText: "Designatoin*",
                      dropDownListOfItems: controller.designationlist,
                      onChanged: (selectedDesignation) {
                        controller.intialSelectedDesignation.value =
                            selectedDesignation ?? "";
                      },
                      isEmpty:
                          controller.intialSelectedDesignation.value.isEmpty
                              ? true
                              : false,
                      value: controller.intialSelectedDesignation.value.isEmpty
                          ? null
                          : controller.intialSelectedDesignation.value,
                    )),
                Obx(() => CustomDropdownTextFormField(
                      hintText: "Select Your Domain",
                      titleText: "Domain*",
                      dropDownListOfItems: controller.domainList,
                      onChanged: (selectedDomain) {
                        controller.intialSelectedDomain.value =
                            selectedDomain ?? "";
                      },
                      isEmpty: controller.intialSelectedDomain.value.isEmpty
                          ? true
                          : false,
                      value: controller.intialSelectedDomain.value.isEmpty
                          ? null
                          : controller.intialSelectedDomain.value,
                    )),
                Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                      navigation: (() => Get.toNamed('/form')),
                      text: "Previous",
                      textColor: Color(0xff000075),
                      backgroundColor: Colors.white,
                      border: Border.all(color: Color(0xff000075)),
                    )),
                    Expanded(
                        child: CustomButton(
                      navigation: (() => controller.checkYourInfoPage()),
                      text: "Next",
                      textColor: Colors.white,
                      backgroundColor: Color(0xff000075),
                      border: Border.all(color: Color(0xff000075)),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
