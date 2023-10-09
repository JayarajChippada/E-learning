import 'package:e_learning/features/home/widgets/bottombar.dart';
import 'package:e_learning/features/home/widgets/category.dart';
import 'package:e_learning/welcome_screens/widgets/circlur_button.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List<dynamic> categories = [
    {'icon': Icons.draw_sharp, 'title': "Art"},
    {'icon': Icons.code, 'title': "Coding"},
    {'icon': Icons.add_shopping_cart, 'title': "Marketing"},
    {'icon': Icons.business_center, 'title': "Bussiness"},
    {'icon': Icons.account_balance_outlined, 'title': "Banking"},
    {'icon': Icons.draw_sharp, 'title': "Art"},
    {'icon': Icons.code, 'title': "Coding"},
    {'icon': Icons.add_shopping_cart, 'title': "Marketing"},
    {'icon': Icons.business_center, 'title': "Bussiness"},
    {'icon': Icons.account_balance_outlined, 'title': "Banking"},
    {'icon': Icons.draw_sharp, 'title': "Art"},
    {'icon': Icons.code, 'title': "Coding"},
    {'icon': Icons.add_shopping_cart, 'title': "Marketing"},
    {'icon': Icons.business_center, 'title': "Bussiness"},
    {'icon': Icons.account_balance_outlined, 'title': "Banking"},
    {'icon': Icons.draw_sharp, 'title': "Art"},
    {'icon': Icons.code, 'title': "Coding"},
    {'icon': Icons.add_shopping_cart, 'title': "Marketing"},
    {'icon': Icons.business_center, 'title': "Bussiness"},
    {'icon': Icons.account_balance_outlined, 'title': "Banking"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 70,),
            Row(
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: CircularButton(
                      color: Colors.white,
                      icon: Icons.arrow_back,
                      iconColor: Colors.black,
                      borderColor: Colors.grey,
                      callback: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyBottomBar(),
                            ));
                      })),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Center(
                  child: Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Spacer(),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Number of columns in the grid
                  crossAxisSpacing: 8.0, // Spacing between columns
                  mainAxisSpacing: 8.0, // Spacing between rows
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return FittedBox(child: MyCategory(icon: categories[index]['icon'], title: categories[index]['title']));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
