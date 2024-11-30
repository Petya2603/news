import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/constants/constants.dart';
import 'package:news_app/Config/theme/theme.dart';
import 'package:news_app/screens/controller/bottomnavbar_Controller.dart';
import 'package:news_app/screens/controller/profile_controller.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

final BotomNavigationBarController bottomnavbarController =
    Get.put(BotomNavigationBarController());
final ProfileController profileController = Get.put(ProfileController());

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        tabs: List.generate(
          bottomNavBarItemName.length,
          (index) => PersistentTabConfig(
            screen: screens(index),
            item: ItemConfig(
              inactiveIcon: SvgPicture.asset(
                bottomNavBarItemName[index]['icon'],
                colorFilter:
                    ColorFilter.mode(AppColors.grey1Color, BlendMode.srcIn),
              ),
              icon: SvgPicture.asset(
                bottomNavBarItemName[index]['icon'],
                colorFilter:
                    ColorFilter.mode(AppColors.orange, BlendMode.srcIn),
              ),
              inactiveForegroundColor: AppColors.grey1Color,
              activeForegroundColor: AppColors.orange,
            ),
          ),
        ),
        navBarBuilder: (navBarConfig) {
          print("NavBar Color: ${profileController.isDarkMode.value}");
          return Obx(
            () => Style4BottomNavBar(
              navBarConfig: navBarConfig,
              navBarDecoration: NavBarDecoration(
                color: profileController.isDarkMode.value
                    ? AppColors.darkBackground
                    : AppColors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget screens(int index) {
    return bottomnavbarController
        .screensList[index % bottomnavbarController.screensList.length];
  }
}
