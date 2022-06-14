import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/register/controllers/register_controller.dart';

class CustomRadioButton extends GetView<RegisterController> {
  final dynamic value;
  final dynamic groupValue;
  final void Function(dynamic)? onChanged;
  final String title;
  const CustomRadioButton({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        activeColor: const Color(0xff28407D),

        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Align(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 14,
              color: const Color(0xff28407D).withOpacity(0.8),
            ),
          ),
          alignment: const Alignment(-1.6, 0),
        ),
        //  visualDensity: VisualDensity.compact,
      ),
    );
  }
}
