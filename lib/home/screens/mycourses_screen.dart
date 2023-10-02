import 'dart:math';

import 'package:e_learning/home/widgets/ongoing.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('My Courses', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          bottom: const TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.blue),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            padding:  EdgeInsets.symmetric(horizontal: 20),
            
            indicatorSize: TabBarIndicatorSize.tab,
            tabs:  [
              Tab(text: 'Ongoing'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngoingView(),
            OngoingView(),
          ],
        ),
      ),
    );
  }
}
