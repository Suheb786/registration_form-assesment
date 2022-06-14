import 'package:get/get.dart';

import '../../../widgets/snackbar.dart';

class YourInfoController extends GetxController {
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
        "Empty Fields",
        "Selection of Course, Branch, Semester are required",
      );
    }
  }

  final count = 0.obs;
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

  void increment() => count.value++;
}
