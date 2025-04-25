import 'package:a_shop/features/shop/landing-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index){
      currentPageIndex.value = index;
  }

  void skipPage(){
    Get.to(()=> LandingPage());
  }

  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(()=> LandingPage());
    } else {
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }
 void dotNavigation(index){
      currentPageIndex.value = index;
      pageController.jumpTo(index);
 }


}