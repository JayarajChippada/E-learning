import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imageUrl,
        height: 120,
        width: 180,
        fit: BoxFit.cover,
      ),
    );
  }
}
