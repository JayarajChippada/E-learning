import 'package:e_learning/authentication/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
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
          ],
        ),
      ),
    );
  }
}
