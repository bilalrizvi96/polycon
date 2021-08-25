import 'package:get/get.dart';
import 'package:polycon/View/Introduction/IntroScreen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => IntroScreen());
    });
  }
}
