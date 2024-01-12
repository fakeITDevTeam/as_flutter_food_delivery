import 'package:flutter/material.dart';
import 'package:as_flutter_food_delivery/pages/home/food_page_body.dart';
import 'package:as_flutter_food_delivery/utils/colors.dart';
import 'package:as_flutter_food_delivery/utils/dimensions.dart';
import 'package:as_flutter_food_delivery/widgets/big_text.dart';
import 'package:as_flutter_food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // debugPrint("curent height (MediaQuery) is ${MediaQuery.of(context).size.height.toString()}");
    // debugPrint("curent width (MediaQuery) is ${MediaQuery.of(context).size.width.toString()}");
    // debugPrint("curent height (Dimensions.dart) ${Dimensions.screenHeight}");
    // debugPrint("curent width (Dimensions.dart) ${Dimensions.screenWidth}");
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      BigText(
                        text: "Indonesia",
                        color: AppColors.mainColor,
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Bandung",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45, // height45
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // showing the body
          const Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              )
          ),
        ],
      ),
    );
  }
}