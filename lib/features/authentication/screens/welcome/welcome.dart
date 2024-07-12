import 'package:firstapp/common_widget/face_in_widget/animation_design.dart';
import 'package:firstapp/common_widget/face_in_widget/fade_in_animation_model.dart';
import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common_widget/face_in_widget/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaquery = MediaQuery.of(context);
    var height =mediaquery.size.height;
    var brightness = mediaquery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor:  isDarkMode ? Colors.black54 : Colors.yellow,
      body: Stack(
        children: [
          TFaceInAnimation (
            durationInMS: 1400,
            animate: TAnimationPosition(bottomAfter: 0,
                bottomBefore: -100,
                rightAfter: 0,
                rightBefore: 0,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,),
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image(image: const AssetImage(tbottom),height: height * 0.6,),
                  const Column(children: [ Text(name2),
                    Text(subname2, textAlign: TextAlign.center,),],),
                Row(
                  children: [
                    Expanded
                      (child: OutlinedButton(onPressed: (){},
                        child: const Text(tlogin))),
                    const SizedBox(width: 20,),
                    Expanded(
                        child: ElevatedButton(
                        onPressed: (){},
            
                        child: const Text(tsigup)))
                  ],
                )
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
