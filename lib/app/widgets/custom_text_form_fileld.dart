import 'package:flutter/material.dart';

class CustomTextformField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final int? maxLines;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final AutovalidateMode? autoValid;
  final int? maxLength;

  CustomTextformField({
    this.maxLines = 1,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.autoValid,
    this.textCapitalization = TextCapitalization.sentences,
    this.keyboardType,
    this.validator,
    this.labelText,
    this.hintText,
    this.controller,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelText == null
              ? SizedBox.shrink()
              : Text(
                  labelText!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
          TextFormField(
            maxLines: maxLines,
            textCapitalization: textCapitalization,
            onTap: onTap,
            maxLength: maxLength,
            autovalidateMode: autoValid,
            keyboardType: keyboardType,
            validator: validator,
            controller: controller,
            cursorRadius: const Radius.circular(10),
            cursorHeight: 17,
            cursorColor: const Color(0xff28407D),
            style: TextStyle(
              fontFamily: "SofiaPro",
              fontSize: 14,
              color: const Color(0xff28407D).withOpacity(0.8),
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,

              prefixIconColor: Colors.black,
              filled: true,
              counterText: "",
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(7.0),
                borderSide: const BorderSide(
                  color: Colors.black87,
                  width: 1,
                ),
              ),
              // isDense: true,
              hintText: hintText,
              labelStyle: TextStyle(
                fontSize: 14,
                color: const Color(0xff28407D).withOpacity(0.6),
              ),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(7.0),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(7.0),
                borderSide: BorderSide(
                  color: Colors.black87,
                  width: 1.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(7.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(195, 255, 21, 21),
                  width: 2,
                ),
              ),
              errorStyle:
                  TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.75)),
            ),
          ),
        ],
      ),
    );
  }
}
