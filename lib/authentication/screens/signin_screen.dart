import 'package:e_learning/authentication/screens/password_screen.dart';
import 'package:e_learning/authentication/screens/signup_screen.dart';
import 'package:e_learning/authentication/widgets/textfield.dart';
import 'package:e_learning/welcome_screens/widgets/button.dart';
import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _textEditingController = TextEditingController();

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
                height: 120,
              ),
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Hi! Welcome back, you've been missed",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 80,
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
                    hintText: "email@gmail.com",
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PasswordScreen(),
                          ));
                    },
                    child: const Text(
                      "Forgot Password?",
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
                height: 40,
              ),
              MyButton(text: "Sign In", callback: () {}),
              const SizedBox(
                height: 50,
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
                    "Or sign in with",
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
                children:   [
                  Container( 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,  // Make the container circular
                      border: Border.all(
                        color: Colors.grey,   // Border color
                        width: 1.5,           // Border width
                      ),
                    ),
                    child: const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/apple_icon.png",),
                    ),
                  ),
                  const SizedBox(width: 15,),
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
                      backgroundImage:
                          AssetImage("assets/images/google_icon.jpg",),
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
                    "Don't have an account? ",
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
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: const Text(
                      "Sign Up",
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
