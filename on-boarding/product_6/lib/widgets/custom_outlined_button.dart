import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key,
      required this.text,
      this.width = 100,
      this.height = 50,
      this.color = Colors.black,
      this.backgroundColor = Colors.white});
  final String text;
  final Color color;
  final double width;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            return backgroundColor;
          },
        ),
        side: WidgetStateProperty.resolveWith(
          (states) {
            return BorderSide(color: color);
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) {
            return color;
          },
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          );
        }),
        fixedSize: WidgetStateProperty.resolveWith(
          (state) {
            return Size(width, height);
          },
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
