import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_form/app/modules/yourInfo/views/your_info_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(('/your-info'));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          width: MediaQuery.of(context).size.width - 20,
          color: Color(0xff000075),
          child: Center(
              child: Text("Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        ),
      ),
    );
  }
}
