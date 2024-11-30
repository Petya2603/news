import 'package:flutter/material.dart';
import 'package:news_app/Config/theme/theme.dart';
import '../../../customWidgets/productcard_screens.dart';

// ignore: camel_case_types
class showAllProduct_Screen extends StatelessWidget {
  const showAllProduct_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(196, 196, 196, 0.28),
            borderRadius: BorderRadius.circular(22),
          ),
          child: TextFormField(
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: "Search for article..",
              hintStyle: const TextStyle(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  fontWeight: FontWeight.normal),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsetsDirectional.symmetric(horizontal: 20),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: AppColors.orange,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (i, index) {
              return const ProductCard();
            }),
      ),
    );
  }
}
