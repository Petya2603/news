import 'package:flutter/material.dart';
import 'package:news_app/screens/controller/category_controller.dart';

// ignore: camel_case_types
class Category_Card extends StatelessWidget {
  Category_Card({super.key});
  final CategoryController categoryController = CategoryController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 157,
          height: 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/categorycard4.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Business",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
