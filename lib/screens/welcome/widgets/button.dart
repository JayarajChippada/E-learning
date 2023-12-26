import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, required this.callback});
  final String text;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0961F5), // Background color of the button
          foregroundColor: Colors.white, // Text color
          elevation: 3, // Elevation (shadow) of the button
          padding:
              const EdgeInsets.all(15), // Padding around the button content
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Rounded corners
          ),
        ),
        onPressed: callback,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
