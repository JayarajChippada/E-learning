import 'package:e_learning/features/auth/screens/signin_screen.dart';
import 'package:e_learning/screens/welcome/screens/onboarding_screen.dart';
import 'package:e_learning/screens/welcome/widgets/button.dart';
import 'package:e_learning/screens/welcome/widgets/richtext.dart';
import 'package:flutter/material.dart';

class MyBottomWidget extends StatelessWidget {
  const MyBottomWidget({super.key, required this.parentHeight});
  final double parentHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: parentHeight * 0.15,
          ),

          const MyRichText(
            text1: "Finding the",
            text2: " Perfect",
            color2: Colors.orange,
          ),
          
          SizedBox(
            height: parentHeight * 0.02,
          ),

          const MyRichText(
            text1: "Online Courses ",
            text2: "for you",
            color1: Colors.orange,
          ),

           SizedBox(
            height: parentHeight * 0.05,
          ),

          const Text(
            "App to search and discover the most suitable\nplace for you to stay.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF797979),
                fontSize: 16),
          ),
           
          SizedBox(
            height: parentHeight * 0.1,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyButton(
              text: "Let's Get Started",
              callback: () {
                Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
              },
            ),
          ),
           
           SizedBox(
            height: parentHeight * 0.1,
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
                  Navigator.pushReplacementNamed(context, SignInScreen.routeName);
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
    );
  }
}
