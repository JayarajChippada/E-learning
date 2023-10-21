
import 'package:flutter/material.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({super.key, required this.number, required this.chapterName, required this.duration});
  final int number;
  final String chapterName;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade300,
                child: Center(child: Text(number.toString())),
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    chapterName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    duration,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),

            ],
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 20),
              child:  Icon(
            Icons.lock,
            color: Colors.grey,
          ))
        ],
      ),
    );
  }
}
