import 'package:firstapp/common_widget/face_in_widget/fade_in_animation_model.dart';
import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/common_widget/face_in_widget/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/face_in_widget/animation_design.dart';

class SplashScreen  extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
    body: Stack(
    children: [
        TFaceInAnimation(
             durationInMS: 2000,
              animate: TAnimationPosition(topBefore: 80,topAfter: 80, leftAfter: tdefultsize,leftBefore: -80),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name1, style: TextStyle(fontSize: 30),),
                        Text(subname1,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                            ],
              ),
        ),
        TFaceInAnimation(
        durationInMS: 2400,
        animate: TAnimationPosition(bottomBefore: 0,bottomAfter: 60,rightBefore: tdefultsize, rightAfter: tdefultsize),
        child: const SizedBox(
            width: 300,
            height: 400,
            child: Image(image: AssetImage(tBottom),))
      )
],
    ),
    );
  }
}

