import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/constants/constants.dart';
import 'package:news_app/Screens/CustomWidgets/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const ProductDetailScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(left: 24, right: 10, bottom: 5, top: 5),
        decoration: BoxDecoration(
          // color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/category_card.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                "US jobs growth disappoints asrecovery falters",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(width: 7),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(favoriteIcon),
            ),
          ],
        ),
      ),
    );
  }
}
