import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';

import 'IntroScreen2.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: DynamicColor().whitecolor,
          width: widths,
          height: heights,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/Path.png',
                  height: heights / 3.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: heights / 20,
                    ),
                    Text(
                      'Welcome to Polycon',
                      style: TextStyle(
                          color: DynamicColor().primarycolor,
                          fontWeight: FontWeight.bold,
                          fontSize: widths / 16),
                    ),
                    SizedBox(
                      height: heights / 30,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: DynamicColor().secondaryColor,
                          fontSize: widths / 20),
                    ),
                    SizedBox(
                      height: heights / 30,
                    ),
                    Image.asset('assets/Welcome.png'),
                    SizedBox(
                      height: heights / 10,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => IntroScreen2()),
                      child: Container(
                        width: widths / 1.2,
                        height: heights / 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: DynamicColor().primarycolor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white, fontSize: widths / 22),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
