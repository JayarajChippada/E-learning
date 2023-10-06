import 'package:flutter/material.dart';
import 'package:e_learning/home/widgets/card.dart';
import 'package:e_learning/home/widgets/category.dart';
import 'package:e_learning/home/widgets/course.dart';
import 'package:e_learning/home/widgets/mentor.dart';
import 'package:e_learning/home/widgets/search_bar.dart';
import 'package:e_learning/pages/category_screen.dart';

import '../welcome_screens/widgets/button.dart';

class CourseDetailsScreen extends StatelessWidget {
  CourseDetailsScreen(
      {super.key,
      required this.title,
      required this.mentor,
      required this.imageUrl,
      required this.aboutCourse,
      required this.label});

  final String title;
  final String mentor;
  final String imageUrl;
  final String aboutCourse;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 18,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         Text("Total Price",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400
                         ),),
                         SizedBox(height: 5,),
                         Text("180.00",style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16
                         ),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Transform.scale(
                        scale: 0.75,
                        child: MyButton(text: "Enroll Now", callback: () {
                        },),
                      ),
                    )
                  ],
                ),
              ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/course2.jpeg",
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  // width: 241.25,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10, 
                  right: 10
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 3, bottom: 3),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            label,
                            style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text("⭐"),
                            ),
                            const Text("4.5"),
                            const Text("(365 reviews)")
                          ],
                        ),
                      ],
                    ),
                    Text(title),
                    
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
