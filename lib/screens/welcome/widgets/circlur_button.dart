import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.color, required this.icon, required this.iconColor, required this.borderColor, required this.callback});
  final Color color;
  final IconData icon;
  final Color iconColor;
  final Color borderColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        shadowColor: borderColor,
        elevation: 0
      ),
      onPressed: callback,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
