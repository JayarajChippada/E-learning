import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText(
      {super.key,
      required this.text1,
      required this.text2,
      this.color1 = Colors.black,
      this.color2 = Colors.black,});
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
              text: text1,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 28, color: color1),
              children: [
                TextSpan(
                    text: text2,
                    style: TextStyle(
                        color: color2, fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ],
    );
  }
}
