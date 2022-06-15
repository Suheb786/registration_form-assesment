import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/snackbar.dart';

class YourInfoController extends GetxController {
  final yourInfoFormKey = GlobalKey<FormState>();
  TextEditingController gradeController = TextEditingController();
  TextEditingController experienceController = TextEditingController();

  var intialSelectedCourse = "".obs;
  var intialSelectedYear = "".obs;
  var intialSelectedDesignation = "".obs;
  var intialSelectedDomain = "".obs;
  //* Course Dropdown Lists ----------->>>>>>>>>>>
  List<String> qualificationList = [
    "B.Tech",
    "B.Pharma",
    "B.A.",
    "M.A.",
    "B.Com.",
    "MBA",
  ];

  //* Passing Year Dropdown Lists ----------->>>>>>>>>>>
  List<String> yearList = [
    "2022",
    "2021",
    "2020",
    "2019",
    "2018",
    "2017",
  ];

  //* Designation Dropdown lists ------------->>>>>>
  List<String> designationlist = [
    "CEO",
    "MD",
    "Team Lead",
  ];
  //* Domain Dropdown lists ------------->>>>>>
  List<String> domainList = ["Machine Learning", "Robotics", "Data Mining"];

  validateDropDownFields() {
    if (intialSelectedCourse.value.isEmpty ||
        intialSelectedYear.value.isEmpty ||
        intialSelectedDesignation.value.isEmpty ||
        intialSelectedDomain.value.isEmpty) {
      showRedSnackbar(
        "Empty Selection Fields",
        "Selection of Educatoin, Year of Passing, Designation and Domain are required",
      );
    }
  }

  String? validExperience(exp) {
    if (exp.toString().isEmpty) {
      return "Please Enter your no. of exprienced year.";
    }
  }

  String? validGrade(grd) {
    if (grd.toString().length < 2) {
      return "Please enter your grades";
    }
  }

  checkYourInfoPage() {
    if (yourInfoFormKey.currentState!.validate() || validateDropDownFields()) {
      Get.toNamed("/your-address");
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
