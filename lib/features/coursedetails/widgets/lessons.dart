import 'package:e_learning/features/coursedetails/widgets/chapter.dart';
import 'package:flutter/material.dart';

class Lessons extends StatelessWidget {
  Lessons({super.key});

  final List<Map<String, dynamic>> courseSections = [
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Introduction',
      'lessons': [
        {'lessonName': 'Introduction to design thinking', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
    {
      'sectionName': 'Fundamentals',
      'lessons': [
        {'lessonName': 'Ideation and Brain Storming', 'duration': '25:00'},
        {'lessonName': 'Prototyping and Testing', 'duration': '10:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
        {'lessonName': 'Empathy in Design', 'duration': '05:00'},
      ]
    },
  ];

  int calculateTotalLessons() {
    int totalLessons = 0;
    for (var section in courseSections) {
      totalLessons += (section['lessons'] as List).length;
    }
    return totalLessons;
  }

  int countTime(List<dynamic> lessons) {
    int totalTime = 0;
    for (var lesson in lessons) {
      totalTime += int.parse(lesson['duration']);
    }
    return totalTime;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
           ChapterCard(
            chapterName: "Introduction to design thinking",
            duration: "05:00",
            number: 01,
          ),
           ChapterCard(
            chapterName: "Introduction to design thinking",
            duration: "05:00",
            number: 01,
          ),
           ChapterCard(
            chapterName: "Introduction to design thinking",
            duration: "05:00",
            number: 01,
          ),
           ChapterCard(
            chapterName: "Introduction to design thinking",
            duration: "05:00",
            number: 01,
          )
        ],
      ),
    );
  }
}
