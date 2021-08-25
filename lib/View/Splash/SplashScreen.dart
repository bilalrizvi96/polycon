import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Controller/SplashController.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SplashScreenController controller = Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Splash_Screen.png'),
                fit: BoxFit.cover)),
        child: Image.asset(
          'assets/WhitePolycon.png',
        ),
      ),
    );
  }
}
