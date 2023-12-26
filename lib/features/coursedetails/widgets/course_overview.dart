import 'package:e_learning/features/coursedetails/widgets/about.dart';
import 'package:e_learning/features/coursedetails/widgets/lessons.dart';
import 'package:e_learning/features/coursedetails/widgets/review.dart';
import 'package:e_learning/features/coursedetails/widgets/reviews.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CourseOverview extends StatelessWidget {
  const CourseOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white
      ),
      child: Column(
        children: [
            Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
                bottom: 10
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: const Text(
                        "Best Seller",
                        style:  TextStyle(
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
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("(365 reviews)")
                      ],
                    ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const FittedBox(
                    child: Text(
                  "Design Thinking Fundamental",
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                         Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.black,
                        ),
                         SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Jayaraj",
                          style:  TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.video_collection_outlined,
                          size: 18,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Lessons",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.badge_outlined,
                          size: 18,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Certificate",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                ],
              ),
            ),
           const TabBar(
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0, color: Colors.blue),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'About'),
              Tab(text: 'Lessons'),
              Tab(text: 'Reviews'),
            ],
          ),
          
           Expanded(
            child: TabBarView(
              children: [
                const About(),

                // Content of Tab 2
                Lessons(),

                // Content of Tab 3
                
                const ReviewsTab(),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}