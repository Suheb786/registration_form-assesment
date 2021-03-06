import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_form/app/modules/yourInfo/views/your_info_view.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final BoxBorder border;
  void Function()? navigation;

  final String text;
  CustomButton({
    this.navigation,
    required this.text,
    required this.textColor,
    required this.border,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigation,
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          // width: MediaQuery.of(context).size.width - 20,

          decoration: BoxDecoration(color: backgroundColor, border: border),
          child: Center(
              child: Text(text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: textColor))),
        ),
      ),
    );
  }
}
