import 'package:e_learning/features/home/widgets/course_overview.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/features/home/widgets/card.dart';
import 'package:e_learning/features/home/widgets/category.dart';
import 'package:e_learning/features/home/widgets/course.dart';
import 'package:e_learning/features/home/widgets/mentor.dart';
import 'package:e_learning/features/home/widgets/search_bar.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          
          child:  Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/course2.jpeg", 
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
               Positioned(
                top: MediaQuery.of(context).size.height*0.3,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CourseOverview(),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
