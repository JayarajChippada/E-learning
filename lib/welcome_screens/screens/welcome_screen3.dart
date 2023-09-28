import 'package:e_learning/authentication/screens/signin_screen.dart';
import 'package:e_learning/welcome_screens/screens/welcome_screen1.dart';
import 'package:e_learning/welcome_screens/screens/welcome_screen2.dart';
import 'package:e_learning/welcome_screens/widgets/bubbles.dart';
import 'package:e_learning/welcome_screens/widgets/circlur_button.dart';
import "package:flutter/material.dart";

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/onboarding3.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Achieve",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Text(
                      ' Certification',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  'with Ease',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF797979),
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 1,
                ),
                const Text(
                  "adipiscing elit, sed do elusmod tempor",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF797979),
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularButton(
                  color: Colors.white,
                  icon: Icons.arrow_back,
                  borderColor: const Color(0xFF0961F5),
                  iconColor: const Color(0xFF0961F5),
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen2()));
                  },
                ),
                const Bubbles(val: 3),
                CircularButton(
                  color: const Color(0xFF0961F5),
                  icon: Icons.arrow_forward,
                  borderColor: const Color(0xFF0961F5),
                  iconColor: Colors.white,
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
