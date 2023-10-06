import 'package:e_learning/home/widgets/card.dart';
import 'package:flutter/material.dart';

import '../../pages/course_details_screen.dart';

class OngoingView extends StatelessWidget {
  OngoingView({super.key});
  List<dynamic> courses = [
    {
      "imageUrl": "assets/images/course2.jpeg",
      "label": "Design",
      "title": "Introduction to Figma",
      "mentor": "Phil Ebiner"
    },
    {
      "imageUrl": "assets/images/course2.jpeg",
      "label": "Bussiness",
      "title": "From Idea to Startup",
      "mentor": "Tim Buchalka"
    },
    {
      "imageUrl": "assets/images/course2.jpeg",
      "label": "Coding",
      "title": "Introduction to Python",
      "mentor": "Angelena Yu"
    },
    {
      "imageUrl": "assets/images/course2.jpeg",
      "label": "Marketing",
      "title": "Social Media Marketing",
      "mentor": "Andrei Neagoie"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: MyCard(
              imageUrl: courses[index]['imageUrl'],
              label: courses[index]['label'],
              title: courses[index]['title'],
              mentor: courses[index]['mentor'],
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetailsScreen(
                        aboutCourse: '',
                        imageUrl: '',
                        label: '',
                        mentor: '',
                        title: '',
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
