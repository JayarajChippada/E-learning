import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Tutor extends StatelessWidget {
  final String imageUrl;
  const Tutor({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 28,
                child: ClipOval(
                  child: Image.asset(
                    imageUrl,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                )),
            
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text("Robert Green", style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 5,),
                Text(
                "Design Tutor",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              ],
              )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade100),
              child: const Center(
                  child: Icon(
                Icons.call,
                color: Colors.blue,
              )),
            ),

            const SizedBox(width: 15,),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade100),
              child: const Center(
                  child: Icon(
                Icons.message,
                color: Colors.blue,
              )),
            ),
          ],
        )
      ],
    );
  }
}
