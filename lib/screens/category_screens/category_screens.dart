import 'package:flutter/material.dart';
import 'package:news_app/screens/category_screens/components/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Category',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.53,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Category_Card();
                },
                childCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
