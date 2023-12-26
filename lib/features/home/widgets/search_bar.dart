import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  MySearchBar({super.key, required this.text, this.color = Colors.white,  this.iconColor=Colors.blue});
  final String text;
  final Color color;
  final Color iconColor;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: iconColor,
        ),
        filled: true,
        fillColor: color,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: color),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: color),
            borderRadius: BorderRadius.circular(15)),
        hintText: text,
      ),
    );
  }
}
