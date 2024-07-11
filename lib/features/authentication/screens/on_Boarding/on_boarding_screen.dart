import 'package:firstapp/constants/colors.dart';
import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/features/authentication/screens/on_Boarding/On_Boarding_Page_Widget.dart';
import 'package:firstapp/features/models/model_on_boarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});


  final controller = LiquidController();
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages=[
      OnBoardingPageWidget(model: OnBoardingModel(height: size.height, image: tbottom, bgColor: onboarding1, counterText: onboardcounter1, subtitle: subname1, title: name1)),
      OnBoardingPageWidget(model: OnBoardingModel(height: size.height, image: timage, bgColor: onboarding2, counterText: onboardcounter2, subtitle: subname2, title: name2)),
      OnBoardingPageWidget(model: OnBoardingModel(height: size.height, image: tsplashtopIcon, bgColor: onboarding3, counterText: onboardcounter3, subtitle: subname3, title: name3)),

    ];



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(pages: pages,
          liquidController: controller,
          onPageChangeCallback: onPageChangeCallback,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          enableSideReveal: true,),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
              onPressed: (){int nextPage = controller.currentPage+1;
                controller.animateToPage(page: nextPage);},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)
                ), child: Container(child: Icon(Icons.arrow_forward_ios) ,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(color: Colors.black87,shape: BoxShape.circle),),
          )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(onPressed: ()=> controller.jumpToPage(page: 2),
                child: Text("Skip", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),)),
          Positioned(
              bottom:10,
              height: 20,
              child: AnimatedSmoothIndicator(
                  activeIndex:controller.currentPage ,
                  count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5,
                ),
              ))
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}


