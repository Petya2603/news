import 'package:flutter/material.dart';
import 'package:news_app/Config/theme/theme.dart';

// ignore: camel_case_types
class fovorite_card extends StatelessWidget {
  const fovorite_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/fav.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  weight: 24,
                  color: AppColors.orange,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: SizedBox(
            width: 150,
            child: Text(
              "Feel the thrill on the only",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
