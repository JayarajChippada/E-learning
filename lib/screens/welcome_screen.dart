import 'package:e_learning/screens/welcome_screen1.dart';
import 'package:e_learning/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
        child: Column(
          children: [
            Expanded(
              child: Stack(
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
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Finding the",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        Text(
                          ' Perfect',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Online Courses ',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "for you",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "App to search and discover the most suitable",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF797979),
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "place for you to stay.",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF797979),
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                     MyButton(text: "Let's Get Started", callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen1()));
                      },),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(
                              color: Color(0xFF242424),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WelcomeScreen1()));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                decorationThickness: 1.5),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
