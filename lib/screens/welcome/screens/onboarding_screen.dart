import 'package:e_learning/features/auth/screens/signup_screen.dart';
import 'package:e_learning/screens/welcome/widgets/bubbles.dart';
import 'package:e_learning/screens/welcome/widgets/circlur_button.dart';
import 'package:e_learning/screens/welcome/widgets/richtext.dart';
import "package:flutter/material.dart";

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding-screen';
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> pages = [
      {
        "img": "assets/images/onboarding1.png",
        "title1": "Discover Your",
        "title2": " Learning",
        "title3": "Adventure",
        "subtext1": "Lorem ipsum dolor sit amet, consectetur",
        "subtext2": "adipiscing elit, sed do elusmod tempor"
      },
      {
        "img": "assets/images/onboarding2.png",
        "title1": "Stay Organized with",
        "title2": "",
        "title3": "Bookmarks",
        "subtext1": "Lorem ipsum dolor sit amet, consectetur",
        "subtext2": "adipiscing elit, sed do elusmod tempor"
      },
      {
        "img": "assets/images/onboarding3.png",
        "title1": "Achieve",
        "title2": " Certification",
        "title3": "with Ease",
        "subtext1": "Lorem ipsum dolor sit amet, consectetur",
        "subtext2": "adipiscing elit, sed do elusmod tempor"
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, SignUpScreen.routeName),
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Image.asset(pages[_pageIndex]["img"], width: 300, height: 300, fit: BoxFit.contain,),
                MyRichText(
                  text1: pages[_pageIndex]["title1"],
                  text2: pages[_pageIndex]["title2"],
                  color2: Colors.orange,
                ),
                Text(
                  pages[_pageIndex]["title3"],
                  style: const TextStyle(
                      color: Colors.orange, fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "${pages[_pageIndex]["subtext1"]}\n${pages[_pageIndex]["subtext2"]}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF797979),
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularButton(
                  color: _pageIndex == 0 ? Colors.white : const Color(0xFF0961F5),
                  icon: Icons.arrow_back,
                  borderColor: _pageIndex == 0 ? Colors.white : const Color(0xFF0961F5),
                  iconColor: Colors.white,
                  callback: () {
                    if(_pageIndex > 0) {
                      setState(() {
                        _pageIndex -= 1;
                      });
                    }
                  },
                ),
                Bubbles(val: _pageIndex + 1),
                CircularButton(
                  color: const Color(0xFF0961F5),
                  icon: Icons.arrow_forward,
                  borderColor: const Color(0xFF0961F5),
                  iconColor: Colors.white,
                  callback: () {
                    if (_pageIndex < 2) {
                      setState(() {
                        _pageIndex += 1;
                      });
                    } else {
                      Navigator.pushReplacementNamed(
                          context, SignUpScreen.routeName);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
