import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:registration_form/app/widgets/custom_text_form_fileld.dart';

import '../../../components/custom_appbar.dart';

import '../../../widgets/empty_image_avatar.dart';
import '../../../widgets/filled_image_avatar.dart';
import '../controllers/form_controller.dart';

class BasicInfo extends GetView<FormController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Register"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => controller.picImage(context),
                child: GetBuilder<FormController>(
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
            ],
          ),
        ),
      ),
    );
  }
}
