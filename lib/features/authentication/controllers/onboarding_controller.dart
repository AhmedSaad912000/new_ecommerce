import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  final pageController=PageController();
  Rx<int> currentPage=0.obs;
  void updatePageIndicator(index)=>currentPage.value= index;
  void dotNavigationClick(index){
    currentPage.value=index;
    pageController.jumpTo(index);
  }
  void nextPage(){
    if(currentPage.value==2){
      Get.offAll(LoginScreen());
    }else{
      int page= currentPage.value+1;
      pageController.jumpToPage(page);
    }
  }
  void skipPage(){
    currentPage.value=2;
    pageController.jumpTo(2);
    Get.to(LoginScreen());

  }
}