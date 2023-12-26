import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height * 0.10,
          width: double.infinity,
          child: Row(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
