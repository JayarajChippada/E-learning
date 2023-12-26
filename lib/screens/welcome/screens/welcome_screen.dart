import 'package:e_learning/screens/welcome/widgets/bottomwidget.dart';
import 'package:e_learning/screens/welcome/widgets/mobile.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome-screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
        child: Column(
          children: [
            const Expanded(child: MobileWidget()),
            SizedBox(
              height: screenHeight * 0.45,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double parentHeight = constraints.maxHeight;
                return MyBottomWidget(
                  parentHeight: parentHeight,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
