import 'package:e_learning/features/coursedetails/widgets/about_course.dart';
import 'package:e_learning/features/coursedetails/widgets/course_info.dart';
import 'package:e_learning/features/coursedetails/widgets/tutor.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 20,
            ),
            Text(
              "About Course",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AboutCourse(
              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                  'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                  'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.',
              maxLines: 10,
            ),

           SizedBox(
              height: 20,
            ), 
            Text(
              "Tutor",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Tutor(
              imageUrl: "assets/images/mentor4.jpeg",
            ),

            SizedBox(
              height: 25,
            ),
            Text(
              "Info",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CourseInfo()
          ],
        ),
      ),
    );
  }
}
