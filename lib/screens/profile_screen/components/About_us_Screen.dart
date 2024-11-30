import 'package:flutter/material.dart';

// ignore: camel_case_types
class About_us_Screen extends StatelessWidget {
  const About_us_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, bottom: 15),
            child: const Text(
              'Contact us',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, bottom: 15),
            child: const Text(
              'About this app',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
