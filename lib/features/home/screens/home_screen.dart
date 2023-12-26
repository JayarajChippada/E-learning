import 'package:e_learning/features/home/widgets/card.dart';
import 'package:e_learning/features/home/widgets/category.dart';
import 'package:e_learning/features/home/widgets/course.dart';
import 'package:e_learning/features/home/widgets/mentor.dart';
import 'package:e_learning/features/home/widgets/search_bar.dart';
import 'package:e_learning/screens/category_screen.dart';
import 'package:e_learning/features/coursedetails/screens/course_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> courseImages = [
    "assets/images/course2.jpeg",
    "assets/images/course2.jpeg",
    "assets/images/course2.jpeg",
    "assets/images/course2.jpeg",
  ];

  List<dynamic> categories = [
    {'icon': Icons.draw_sharp, 'title': "Art"},
    {'icon': Icons.code, 'title': "Coding"},
    //{'icon': Icons.account_balance_outlined, 'title': "Banking"},
    {'icon': Icons.add_shopping_cart, 'title': "Marketing"},
    {'icon': Icons.business_center, 'title': "Bussiness"},
  ];

  List<dynamic> mentors = [
    {"imageUrl": "assets/images/mentor4.jpeg", "name": "Phil Ebiner"},
    {"imageUrl": "assets/images/mentor1.jpeg", "name": "Angelena Yu"},
    {"imageUrl": "assets/images/mentor3.jpeg", "name": "Andrei Neagoie"},
    {"imageUrl": "assets/images/mentor2.jpeg", "name": "Tim Buchalka"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            decoration: const BoxDecoration(
                color: Color(0xFF0961F5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(20, 20),
                  bottomRight: Radius.elliptical(20, 20),
                )),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const Spacer(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jayaraj \u{1F44B}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Let's start learning!",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue.shade100),
                        child: const Center(
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Transform.scale(
                        scale: 0.9,
                        child: MySearchBar(
                          text: "search",
                        ),
                      )),
                      const SizedBox(width: 5,),
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: const Center(
                          child: Icon(
                            Icons.list_rounded,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryScreen(),
                                ));
                          },
                          child: const Text(
                            "See all",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: categories
                        .map((obj) =>
                            MyCategory(icon: obj['icon'], title: obj['title']))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular Courses",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 6),
                    child: Row(
                      children: courseImages
                          .map((image) => MyCourse(imageUrl: image))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Top Mentor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: mentors
                        .map((obj) => MyMentor(
                            imageUrl: obj['imageUrl'], name: obj['name']))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Continue Learning",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyCard(
                      imageUrl: "assets/images/course2.jpeg",
                      label: "Design",
                      title: "Introduction to Figma",
                      mentor: "Phil Ebiner",
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
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
