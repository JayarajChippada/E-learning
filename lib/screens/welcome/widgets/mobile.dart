import 'package:flutter/material.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Positioned(
              right: 67,
              left: 67,
              top: 105,
              child: Image.asset(
                "assets/images/welcome_logo.png",
                height: 496.7,
                width: 241.25,
              ),
            ),
            Positioned(
              right: 30,
              left: 30,
              top: 110,
              child: Image.asset(
                "assets/images/Ellipse9.png",
                height: 344.75,
                width: 89.82,
              ),
            ),
          ],
        );
  }
}