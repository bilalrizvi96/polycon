import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Signup/SignUp.dart';
import 'package:polycon/View/TabView/TabViewScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heights / 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 0.0),
                    child: Image.asset(
                      'assets/logo.png',
                      height: heights / 5,
                      width: widths / 1.8,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: 35.0, left: 35.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: DynamicColor().primarycolor.withOpacity(0.05),
                          spreadRadius: 0,
                          blurRadius: 15,
                          // offset: Offset(-20, -10),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: DynamicColor().primarycolor,
                        ),
                        contentPadding: const EdgeInsets.all(1),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          // borderSide: BorderSide(
                          //   color: Colors.white,
                          // ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: 35.0, left: 35.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: DynamicColor().primarycolor.withOpacity(0.05),
                          spreadRadius: 0,
                          blurRadius: 15,
                          // offset: Offset(-20, -10),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: DynamicColor().primarycolor,
                        ),
                        contentPadding: const EdgeInsets.all(1),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heights / 50,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => TabViewScreen()),
                    child: Container(
                      width: widths / 1.2,
                      height: heights / 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: DynamicColor().primarycolor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white, fontSize: widths / 22),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heights / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: heights / 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 10),
                        child: Container(
                          width: widths / 3.4,
                          height: heights / 1000,
                          color: Colors.grey,
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
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: heights / 10,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(() => SignUpScreen(
                          check: false,
                        )),
                    child: Container(
                      width: widths / 1.2,
                      height: heights / 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: DynamicColor().btncolor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontSize: widths / 22),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heights / 40,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(() => SignUpScreen(
                          check: true,
                        )),
                    child: Container(
                      width: widths / 1.2,
                      height: heights / 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: DynamicColor().btncolor,
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
            ],
          ),
        ),
      ),
    );
  }
}
