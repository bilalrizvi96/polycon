import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Login/LoginScreen.dart';
import 'package:polycon/View/Signup/SignUp.dart';

class IntroScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: InkWell(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Have an account ?',
                    style: TextStyle(
                        color: DynamicColor().textcolor, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Log In',
                        style: TextStyle(
                            color: DynamicColor().primarycolor, fontSize: 17),
                      )
                    ]),
              )),
        ),
      ),
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
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: heights / 20,
                    ),
                    Text(
                      'Socialize',
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
                    Image.asset('assets/collaborationamico.png'),
                    GestureDetector(
                      onTap: () => Get.to(() => SignUpScreen(
                            check: false,
                          )),
                      child: Container(
                        width: widths / 1.2,
                        height: heights / 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: DynamicColor().primarycolor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white, fontSize: widths / 22),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heights / 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 10),
                          child: Container(
                            width: widths / 3.4,
                            height: heights / 1000,
                            color: DynamicColor().textcolor,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(color: DynamicColor().textcolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: widths / 3.4,
                            height: heights / 1000,
                            color: DynamicColor().textcolor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: heights / 30,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => SignUpScreen(
                            check: true,
                          )),
                      child: Container(
                        width: widths / 1.2,
                        height: heights / 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: DynamicColor().primarycolor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          'Sign Up as a Couple',
                          style: TextStyle(
                              color: Colors.white, fontSize: widths / 22),
                        ),
                      ),
                    ),
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
