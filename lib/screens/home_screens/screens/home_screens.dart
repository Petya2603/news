import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Config/constants/constants.dart';
import 'package:news_app/Config/theme/theme.dart';
import 'package:news_app/Screens/CustomWidgets/product_detail_screen.dart';
import 'package:news_app/customWidgets/productcard_screens.dart';
import 'package:news_app/screens/home_screens/screens/showAllProducts_screen.dart';
import '../../controller/home_controller.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});
  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          logo,
          height: 50,
          width: 125,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // showSearch(
              //   context: context,
              //   delegate: CustomSearchDelagete(),
              // );
            },
            icon: Icon(
              Icons.search,
              weight: 15,
              color: AppColors.orange,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Latest News",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const showAllProduct_Screen());
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: -20,
                  right: 0,
                  child: SizedBox(
                    height: 200,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.79),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(const ProductDetailScreen());
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: Get.size.width,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/2.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: SizedBox(
                                  width: 310,
                                  child: Text(
                                    "Climate change: Arctic warming linked to colder winters",
                                    style: TextStyle(fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          TabBar(
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            controller: homeController.tabController,
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.grey2Color,
            indicatorColor: AppColors.orange,
            indicatorWeight: 4,
            tabs: List.generate(
              homeController.tabName.length,
              ((index) => Tab(
                    text: homeController.tabName[index],
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommendation Topic",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const showAllProduct_Screen());
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: homeController.tabController,
              children: List.generate(6, (index) => buildProductiveList()),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductiveList() {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 5),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (contex, index) {
          return const ProductCard();
        },
      ),
    );
  }
}
