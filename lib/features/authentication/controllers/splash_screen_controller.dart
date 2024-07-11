import 'package:firstapp/features/authentication/screens/welcome/welcome.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 100));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 2600));
    Get.to(const Welcome());
  }

}