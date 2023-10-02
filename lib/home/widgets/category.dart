import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.grey.shade100),
          child: Center(
              child: Icon(
            icon,
            color: Colors.blue,
          )),
        ),
        const SizedBox(
          height: 5,
        ),
        FittedBox(child: Center(child: Text(title, style:const TextStyle(fontWeight: FontWeight.bold,),)))
      ],
    );
  }
}
