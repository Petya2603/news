import 'package:get/get.dart';
import 'package:news_app/screens/category_screens/category_screens.dart';
import 'package:news_app/screens/favorite_screens/fav_screens.dart';
import 'package:news_app/screens/home_screens/screens/home_screens.dart';
import 'package:news_app/screens/profile_screen/profile_screens.dart';

class BotomNavigationBarController extends GetxController {
  List screensList = [
    const HomeScreens(),
    const CategoryScreen(),
    const FavoriteScreens(),
    const ProfileScreens(),
  ];

}
