import "package:flutter/material.dart";

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              ],
            ),
            Image.asset("assets/images/onboarding1.png"),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Discover Your",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Text(
                      ' Learning',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  'Adventure',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF797979),
                      fontSize: 16),
                ),
                Text(
                  "adipiscing elit, sed do elusmod tempor",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF797979),
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius:
                              BorderRadius.all(Radius.circular(100))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                    ),
                  ],
                ),
                const SizedBox(width: 80,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Color(0xFF0961F5),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
