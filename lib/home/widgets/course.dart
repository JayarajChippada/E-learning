import 'package:flutter/material.dart';

class MyCourse extends StatelessWidget {
  const MyCourse({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 280,
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.58,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
          const FittedBox(
              child: Text(
            "Design Thinking Fundamental",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.person,
                size: 18,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Robert Green",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                "180.00",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(40)),
                child: const Text(
                  "Best seller",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
