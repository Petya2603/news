import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/profile_screen/components/About_us_Screen.dart';

class about_as extends StatelessWidget {
  final String text;
  final Icon;
  const about_as({super.key, required this.text, this.Icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Get.to(const About_us_Screen());
              },
              icon: Icon,
            ),
            const SizedBox(width: 13),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
