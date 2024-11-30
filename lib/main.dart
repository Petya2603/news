import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/bottomnavbar/bottom_nav_bar.dart';
import 'package:news_app/screens/controller/profile_controller.dart';

void main() {
  Get.put(ProfileController());
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    return Obx(
      () => GetMaterialApp(
        theme: ThemeData(
          brightness: profileController.isDarkMode.value
              ? Brightness.dark
              : Brightness.light,
          fontFamily: "Gilroy",
        ),
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
      ),
    );
  }
}
