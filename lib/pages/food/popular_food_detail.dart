import 'package:flutter/material.dart';
import 'package:as_flutter_food_delivery/utils/colors.dart';
import 'package:as_flutter_food_delivery/utils/dimensions.dart';
import 'package:as_flutter_food_delivery/widgets/app_column.dart';
import 'package:as_flutter_food_delivery/widgets/app_icon.dart';
import 'package:as_flutter_food_delivery/widgets/big_text.dart';
import 'package:as_flutter_food_delivery/widgets/expandable_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/food0.png"
                  ),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: "Chinese Side",),
                  SizedBox(height: Dimensions.height20,),
                  const BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20,),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text: "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled " +
                            "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered " +
                            "with fried onions (cheeky easy sub below!), fresh corlander/cilantro, then par boiled ",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // expandable text widget

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10 / 2,),
                  const BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2,),
                  const Icon(Icons.add, color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20
              ),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor
              ),
              child: const BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}