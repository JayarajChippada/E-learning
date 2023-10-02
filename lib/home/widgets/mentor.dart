import 'package:flutter/material.dart';

class MyMentor extends StatelessWidget {
  const MyMentor({super.key, required this.imageUrl, required this.name});
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
            child: ClipOval(
          child: Image.asset(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        )),
        const SizedBox(
          height: 10,
        ),
        FittedBox(
            child: Center(
                child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )))
      ],
    );
  }
}
