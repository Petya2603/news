import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isDarkMode = false.obs;

  void toogletheme(bool isDark) {
    if (isDark) {
      Get.changeTheme(ThemeData.dark());
      isDarkMode(true);
    } else {
      Get.changeTheme(ThemeData.light());
      isDarkMode(false);
    }
  }
}
