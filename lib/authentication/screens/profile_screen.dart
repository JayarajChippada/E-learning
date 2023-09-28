import 'package:e_learning/authentication/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../welcome_screens/widgets/button.dart';
import '../../welcome_screens/widgets/circlur_button.dart';
import '../widgets/textfield.dart';

class ProfileEditingScreen extends StatefulWidget {
  const ProfileEditingScreen({super.key});

  @override
  State<ProfileEditingScreen> createState() => _ProfileEditingScreenState();
}

class _ProfileEditingScreenState extends State<ProfileEditingScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    height: 20,
                  ),
                  const Text(
                    "Complete Your Profile",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Don't worry, only you can see your personal",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  const Text(
                    "data. No one else will be able to see it.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFF8F8FF)),
                        child: const Center(
                            child: Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.grey,
                        )),
                      ),
                      Positioned(
                        bottom: 6,
                        right: 135,
                        child:  Container(
                          padding: const EdgeInsets.all(5),
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color:Color(0xFF0961F5)),
                          child: const Center(
                              child: Icon(
                            Icons.edit,
                            size: 15,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ]
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyTextField(
                        hintText: "Jayaraj Chippada",
                        controller: _textEditingController,
                        type: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyTextField(
                        hintText: "Enter Phone Number",
                        controller: _textEditingController,
                        type: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Gender",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyTextField(
                        hintText: "Select",
                        controller: _textEditingController,
                        type: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MyButton(text: "Complete Profile", callback: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}