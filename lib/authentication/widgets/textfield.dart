import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.type,
      required this.controller,
      this.maxLines = 1,
      this.color = Colors.red});

  final String hintText;
  final TextInputType type;
  final TextEditingController controller;
  final int maxLines;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF8F8FF),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xFFF8F8FF)),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xFFF8F8FF)),
            borderRadius: BorderRadius.circular(15)),
        hintText: hintText,
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
