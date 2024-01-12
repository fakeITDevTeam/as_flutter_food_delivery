import 'package:get/get.dart';

class Dimensions {
  // default
  static double screenHeight = Get.context!.height; // ytt: 844
  static double screenWidth = Get.context!.width; //ytt: 390

  // static double pageView = screenHeight / 2.64;
  // static double pageViewContainer = screenHeight / 3.84;
  // static double pageViewTextContainer = screenHeight / 7.03;

  // static double height10 = screenHeight / 84.4;
  // static double height15 = screenHeight / 56.27;
  // static double height20 = screenHeight / 42.2;

  // static double font20 = screenHeight / 42.2;

  static double pageView = screenHeight / (screenHeight / 320);
  static double pageViewContainer = screenHeight / (screenHeight / 220);
  static double pageViewTextContainer = screenHeight / (screenHeight / 120);

  // dynamic height padding and margin
  static double height10 = screenHeight / (screenHeight / 10);
  static double height15 = screenHeight / (screenHeight / 15);
  static double height20 = screenHeight / (screenHeight / 20);
  static double height30 = screenHeight / (screenHeight / 30);
  static double height45 = screenHeight / (screenHeight / 45);

  // dynamic width padding and margin
  static double width10 = screenHeight / (screenHeight / 10);
  static double width15 = screenHeight / (screenHeight / 15);
  static double width20 = screenHeight / (screenHeight / 20);
  static double width30 = screenHeight / (screenHeight / 30);
  static double width45 = screenHeight / (screenHeight / 45);

  // font size
  static double font16 = screenHeight / (screenHeight / 16);
  static double font20 = screenHeight / (screenHeight / 20);
  static double font26 = screenHeight / (screenHeight / 26);

  // radius
  static double radius15 = screenHeight / (screenHeight / 15);
  static double radius20 = screenHeight / (screenHeight / 20);
  static double radius30 = screenHeight / (screenHeight / 30);

  // icon size
  static double iconSize24 = screenHeight / (screenHeight / 24);
  static double iconSize16 = screenHeight / (screenHeight / 16);

  // listview size
  // static double listViewImgSize = screenWidth / 3.25 ; // 390 / 120
  // static double listViewTextContainerSize = screenWidth / 3.9; // 390 / 100
  static double listViewImgSize = screenWidth / (screenWidth / 120) ; // 390 / 120
  static double listViewTextContainerSize = screenWidth / (screenWidth / 100); // 390 / 100

  // PopularFoodDetail
  static double popularFoodImgSize = screenHeight / (screenHeight / 350); // image-height: 350

  // bottom height
  static double bottomHeightBar  = screenHeight / (screenHeight / 120); // screenHeight / 120
}