import 'package:flutter/material.dart';

class AboutCourse extends StatefulWidget {
  final String text;
  final int maxLines;
  const AboutCourse({super.key, required this.text,  this.maxLines = 3});

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16
          ),
          maxLines: isExpanded ? widget.maxLines : 3,
          overflow: TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Read Less' : 'Read More',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              color: Colors.blue,
              decorationThickness: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
