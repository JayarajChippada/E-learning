import 'package:e_learning/features/home/screens/home_screen.dart';
import 'package:e_learning/features/home/screens/mycourses_screen.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class MyBottomBar extends StatefulWidget {
  static const routeName = '/bottombar';
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  final List<Widget> _pages = [
    HomeScreen(),
    const CoursesScreen(),
    const Icon(
      UniconsLine.cloud_bookmark,
      color: Colors.blue,
    ),
    const Icon(
      UniconsLine.chat_info,
      color: Colors.blue,
    ),
    const Icon(
      UniconsLine.user,
      color: Colors.blue,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  int _currentIndex = 0;
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _pages[_currentIndex],
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            elevation: 20,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey.shade800,
            currentIndex: _currentIndex,
            onTap: onTapped,
            showUnselectedLabels: true,
            iconSize: 25,
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            selectedLabelStyle: const TextStyle(fontSize: 10),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    UniconsLine.estate,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    UniconsLine.book_open,
                  ),
                  label: "My Courses"),
              BottomNavigationBarItem(
                  icon: Icon(UniconsLine.cloud_bookmark), label: "Bookmark"),
              BottomNavigationBarItem(
                  icon: Icon(UniconsLine.chat_info), label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(UniconsLine.user), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
