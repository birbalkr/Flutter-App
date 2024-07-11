import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen  extends StatelessWidget {
  SplashScreen({Key ? key}) : super(key : key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
    body: Stack(
    children: [
        Obx(
         ()=> AnimatedPositioned(
             duration:  const Duration(milliseconds: 1600),
            top: splashController.animate.value ? 0 : -40,
            left: splashController.animate.value ? 0 : -40,
            height: 380,
            width: 320,
            child: const Image(image: AssetImage(tsplashtopIcon),)),
       ),
        Obx(
            ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top:80,
                left: splashController.animate.value ?  tdefultsize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name1, style: TextStyle(fontSize: 30),),
                      Text(subname1,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          ],
                        ),
                ),),
            ),
        Obx(
          ()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 80 :-100,
              left: splashController.animate.value ? -25 :-100,
              height: 400,
              child: const Image(image: AssetImage(tbottom),)),
      ),
],
    ),
    );
  }



}
