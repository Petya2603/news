import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/screens/profile_screen/components/about_as.dart';
import 'package:news_app/screens/profile_screen/components/dark_mode.dart';
import 'package:news_app/screens/profile_screen/components/profile.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // backgroundColor: AppColors.white,
      body: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profile(
              text: 'Language',
              Icon: SvgPicture.asset(
                'assets/icons/flag.svg',
                width: 31,
                height: 20,
              ),
            ),
            profile_mode(),
            about_as(
              text: 'About us',
              Icon: SvgPicture.asset(
                'assets/icons/aboutus.svg',
                width: 20,
                height: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
