import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SsplashScreen  extends StatelessWidget {
  SsplashScreen({Key ? key}) : super(key : key);

  final SplashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    SplashController.startAnimation();
    return Scaffold(
    body: Stack(
    children: [
       Obx(
         ()=> AnimatedPositioned(
             duration:  Duration(milliseconds: 1600),
            top: SplashController.animate.value ? 0 : -40,
            left: SplashController.animate.value ? 0 : -40,
            height: 380,
            width: 320,
            child: const Image(image: AssetImage(tsplashtopIcon),)),
       ),
      Obx(
    ()=> AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top:80,
            left: SplashController.animate.value ?  tdefultsize : -80,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: SplashController.animate.value ? 1 : 0,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tName, style: TextStyle(fontSize: 30),),
                  Text(line,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                      ],
                    ),
            ),),
      ),
      Obx(
      ()=> AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: SplashController.animate.value ? 80 :-100,
            left: SplashController.animate.value ? -25 :-100,
            height: 400,
            child: Image(image: AssetImage(tbottom),)),
      ),
],
    ),
    );
  }



}
