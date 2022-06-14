import 'package:get/get.dart';

class YourInfoController extends GetxController {
  var intialSelectedCourse = "".obs;
  var intialSelectedYear = "".obs;
  //* Course Dropdown Lists ----------->>>>>>>>>>>
  List<String> qualificationList = [
    "B.Tech",
    "Diploma",
    "B.Pharma",
    "D.Pharma",
    "B.A.",
    "M.A.",
    "B.Com.",
    "MBA",
    "Media",
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
  //TODO: Implement YourInfoController

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
