import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:registration_form/app/components/enums.dart';
import 'package:registration_form/app/widgets/custom_text_form_fileld.dart';

import '../../../components/custom_appbar.dart';

import '../../../widgets/customButton.dart';
import '../../../widgets/custom_radio_button.dart';
import '../../../widgets/empty_image_avatar.dart';
import '../../../widgets/filled_image_avatar.dart';
import '../controllers/register_controller.dart';

class Register extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(title: "Register"),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => controller.picImage(context),
                    child: GetBuilder<RegisterController>(
                      builder: (controller) {
                        if (controller.pickedImage == null) {
                          return EmptyImageAvatar();
                        } else {
                          return FilledImageAvatar(
                            image: controller.pickedImage!,
                          );
                        }
                      },
                    ),
                  ),
                  CustomTextformField(
                    controller: controller.firstNameController,
                    labelText: "First Name*",
                    hintText: "Enter your first name here",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    labelText: "Last Name*",
                    hintText: "Enter your last name here",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    keyboardType: TextInputType.number,
                    labelText: "Phone Number*",
                    hintText: "Enter your 10 digit phone number",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    labelText: "Email*",
                    hintText: "Your email goes here",
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Color(0xff000075),
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              CustomRadioButton(
                                title: "Male",
                                groupValue: controller.genderType.value,
                                value: Gender.Male,
                                onChanged: (val) {
                                  controller.genderCheck();
                                  controller.genderType.value = val as Gender;
                                },
                              ),
                              CustomRadioButton(
                                title: "Female",
                                groupValue: controller.genderType.value,
                                value: Gender.Female,
                                onChanged: (val) {
                                  controller.genderType.value = val as Gender;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTextformField(
                    labelText: "Password*",
                    hintText: "Password",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.visibility_off,
                        color: Color(0xff000075),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomTextformField(
                    labelText: "Confirm Password*",
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff000075),
                    ),
                  ),
                  CustomButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
