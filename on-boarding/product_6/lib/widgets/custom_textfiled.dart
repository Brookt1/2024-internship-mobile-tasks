import 'package:flutter/material.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled(
      {super.key, this.fillColor, this.hintText, this.suffixIcon});
  final String? hintText;
  final Icon? suffixIcon;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      minLines: null,
      expands: true,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(
              6,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(
              6,
            ),
          ),
        ),
        fillColor: fillColor,
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
      ),
    );
  }
}
