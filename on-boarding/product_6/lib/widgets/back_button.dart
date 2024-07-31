import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color iconColor) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pop();
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      padding: EdgeInsets.only(left: 8),
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        Icons.arrow_back_ios,
        color: iconColor,
        size: 20,
      ),
    ),
  );
}
