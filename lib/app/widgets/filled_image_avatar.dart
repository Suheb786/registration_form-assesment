import 'dart:io';

import 'package:flutter/material.dart';

class FilledImageAvatar extends StatelessWidget {
  final File image;
  const FilledImageAvatar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 41,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 40,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.file(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
