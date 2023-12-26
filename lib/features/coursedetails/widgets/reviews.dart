import 'package:e_learning/features/coursedetails/widgets/review.dart';
import 'package:e_learning/features/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              RichText(text: const TextSpan(
                text: "Reviews",
                style: TextStyle(color: Colors.black,
                fontSize: 16, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "(42)",
                    style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)
                  )
                ]
              )),
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.scale(
                  scale: 0.8,
                  child: MySearchBar(
                      text: "Search in Reviews",
                      color: Colors.blue.shade50,
                    )
                ),
              ),
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  6,
                  (index) => Column(
                        children: [
                          const ReviewWidget(),
                          if (index != 6)
                            const Divider(
                              color: Colors.grey,
                              thickness: 0.25,
                            )
                        ],
                      )),
            ),
          ),
        ),
      ],
    );
  }
}
