import 'package:e_learning/features/auth/screens/profile_screen.dart';
import 'package:e_learning/features/auth/screens/signin_screen.dart';
import 'package:e_learning/features/auth/screens/verification_screen.dart';
import 'package:e_learning/features/auth/widgets/textfield.dart';
import 'package:e_learning/screens/welcome/widgets/button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isChecked = false;
  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
              const Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Fill your information below or register",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "with your social account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 40,
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
                    type: TextInputType.name,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    hintText: "example@gmail.com",
                    controller: _textEditingController,
                    type: TextInputType.emailAddress,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    "Agree with",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationThickness: 1.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                  text: "Sign Up",
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileEditingScreen(),
                        ));
                  }),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    color: Colors.grey,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Or sign up with",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 2,
                    color: Colors.grey,
                    width: 80,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Make the container circular
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 1.5, // Border width
                        ),
                      ),
                      child: const CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/images/apple_icon.png",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/images/google_icon.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: const CircleAvatar(
                      maxRadius: 25,
                      //backgroundColor: Colors.white,
                      //foregroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("assets/images/facebook_icon.jpg"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
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
    );
  }
}
