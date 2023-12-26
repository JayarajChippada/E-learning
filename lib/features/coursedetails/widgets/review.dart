import 'package:e_learning/features/home/widgets/mentor.dart';
import 'package:e_learning/screens/welcome/widgets/richtext.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,),
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 28,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/mentor1.jpeg",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Smitha Reddy",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Text("11 months ago")
            ],
          ),
          const Text(
              "Lorem ipsum dolor sit amet, consectetur adipaicing elit,\nsed do eiusmod tempor incididunt"),
          const Row(
            children: [
              Text("⭐⭐⭐⭐⭐", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Text("5.0",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
