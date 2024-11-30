import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/theme/theme.dart';
import 'package:news_app/screens/customWidgets/product_detail_screen.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              panEnabled: true,
              minScale: 0.5,
              maxScale: 4.0,
              scaleEnabled: true,
              child: Image.asset(
                "assets/images/card.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.white),
              onPressed: () {
                Get.off(const ProductDetailScreen());
              },
            ),
          )
        ],
      ),
    );
  }
}
