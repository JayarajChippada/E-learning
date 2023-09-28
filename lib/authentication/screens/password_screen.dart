import 'package:e_learning/authentication/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../welcome_screens/widgets/button.dart';
import '../../welcome_screens/widgets/circlur_button.dart';
import '../widgets/textfield.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
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
                  "New Password",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your new password must be different",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                const Text(
                  "from previously used passwords.",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      hintText: "password",
                      controller: _textEditingController,
                      type: TextInputType.emailAddress,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      hintText: "password",
                      controller: _textEditingController,
                      type: TextInputType.emailAddress,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                MyButton(text: "Create New Password", callback: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
