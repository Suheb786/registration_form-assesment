import 'package:flutter/material.dart';

class EmptyImageAvatar extends StatelessWidget {
  const EmptyImageAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 41,
          child: CircleAvatar(
            backgroundColor: Color(0xff00A3FF),
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
            radius: 40.0,
          ),
        ),
        Positioned(
          right: 2,
          bottom: 2,
          child: Container(
            child: Icon(
              Icons.edit,
              size: 10,
            ),
            padding: EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(90.0),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
