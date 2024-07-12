
import 'package:firstapp/common_widget/face_in_widget/fade_in_animation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'fade_in_animation_controller.dart';

class TFaceInAnimation extends StatelessWidget {
   TFaceInAnimation({
    super.key,
    required this.durationInMS,
     this.animate,
     required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMS;
  final TAnimationPosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> AnimatedPositioned(
          duration: Duration(milliseconds: durationInMS),
          top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
          left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
          bottom : controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
          right : controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
          child: AnimatedOpacity(
              opacity: controller.animate.value ? 1 : 0,
              duration: Duration(milliseconds: durationInMS,),
              child: child,),)
    );
  }
}