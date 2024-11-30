import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/theme/theme.dart';
import 'package:news_app/screens/customWidgets/card_image_screen.dart';

import '../bottomnavbar/bottom_nav_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        const ProfilePageScreen(),
                      );
                    },
                    child: Image.asset(
                      "assets/images/card.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.off(const BottomNavBar());
                      },
                      icon: (Icon(Icons.arrow_back, color: AppColors.white)),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.46)),
                            width: 47,
                            height: 40,
                            child: IconButton(
                                onPressed: () async {
                                  // await Share.share("Paylash");
                                },
                                icon: const Icon(Icons.share),
                                color: AppColors.white)),
                        const SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(255, 255, 255, 0.46)),
                          width: 47,
                          height: 40,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border),
                              color: AppColors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Unravel mysteries of the Maldives',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Just say anything, George, say what's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never.",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
