import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

SnackbarController showRedSnackbar(text, massage) {
  return Get.snackbar(
    "",
    "",
    backgroundColor: Colors.red,
    borderRadius: 5,
    colorText: Colors.white,
    dismissDirection: DismissDirection.horizontal,
    icon: const Icon(
      Icons.error,
      color: Colors.white,
    ),
    titleText: Text(
      text,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.white),
    ),
    messageText: Text(
      massage,
      style: GoogleFonts.montserrat(color: Colors.white),
    ),
  );
}
