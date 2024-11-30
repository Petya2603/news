import 'package:flutter/material.dart';
import 'package:news_app/screens/favorite_screens/components/fav_card.dart';

class FavoriteScreens extends StatelessWidget {
  const FavoriteScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const fovorite_card();
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
