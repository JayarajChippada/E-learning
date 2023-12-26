import 'package:e_learning/features/auth/screens/signup_screen.dart';
import 'package:e_learning/screens/welcome/widgets/circlur_button.dart';
import 'package:flutter/material.dart';

import '../../../screens/welcome/widgets/button.dart';

class VerificationScreen extends StatefulWidget {
  static const String routeName = '/verification-screen';
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                alignment: Alignment.centerLeft,
                scale: 0.8,
                child: CircularButton(
                    color: Colors.white,
                    icon: Icons.arrow_back,
                    iconColor: Colors.black,
                    borderColor: Colors.grey,
                    callback: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    })),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Verify Code",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "please enter the code we just sent to the mail",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                const Text(
                  "example@email.com",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Didn't receive OTP?",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Resend code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1.5),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyButton(text: "Verify", callback: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
