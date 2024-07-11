import 'package:firstapp/constants/colors.dart';
import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../models/model_on_boarding.dart';
import '../screens/on_Boarding/On_Boarding_Page_Widget.dart';

class OnBoardingController  extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages=[
    OnBoardingPageWidget(model: OnBoardingModel(image: tbottom, bgColor: onboarding1, counterText: onboardcounter1, subtitle: subname1, title: name1)),
    OnBoardingPageWidget(model: OnBoardingModel(image: tsplashtopIcon, bgColor: onboarding2, counterText: onboardcounter2, subtitle: subname2, title: name2)),
    OnBoardingPageWidget(model: OnBoardingModel(image: timage, bgColor: onboarding3, counterText: onboardcounter3, subtitle: subname3, title: name3)),

  ];
  onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  animateToPage(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

}