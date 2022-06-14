import 'package:flutter/material.dart';

AppBar customAppBar({
  required String title,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
