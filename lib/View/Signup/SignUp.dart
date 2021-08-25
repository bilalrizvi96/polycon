import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Login/LoginScreen.dart';
import 'package:polycon/View/OTP/OTPScreen.dart';
import 'package:polycon/View/PatnerDetail/PatnerDetailScreen.dart';

class SignUpScreen extends StatelessWidget {
  var check;
  SignUpScreen({this.check});

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
                Get.off(() => LoginScreen());
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
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: heights / 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 0.0),
                        child: Image.asset(
                          'assets/logo.png',
                          height: heights / 5,
                          width: widths / 1.8,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 0.0, right: 200),
                      child: Text(
                        'Enter your details',
                        style: TextStyle(
                            fontSize: widths / 26,
                            color: DynamicColor().primarycolor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: heights / 50,
                    ),
                    Wrap(
                      children: [
                        Container(
                          width: widths / 2.3,
                          padding: EdgeInsets.only(right: 10, left: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: DynamicColor()
                                    .primarycolor
                                    .withOpacity(0.05),
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
                                Icons.person,
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
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                              hintText: "Enter First Name",
                            ),
                          ),
                        ),
                        Container(
                          width: widths / 2.3,
                          padding: EdgeInsets.only(right: 10, left: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: DynamicColor()
                                    .primarycolor
                                    .withOpacity(0.05),
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
                                Icons.person,
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
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                              hintText: "Enter Last Name",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Enter Email",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Enter Password",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                            Icons.autorenew,
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Confirm Password",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                            Icons.person,
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Select Gender",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                            Icons.view_compact_outlined,
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Select Your Birthday",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 35.0, left: 35.0, top: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                DynamicColor().primarycolor.withOpacity(0.05),
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
                            Icons.phone_android_sharp,
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11),
                          hintText: "Enter Your Phone no.",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heights / 50,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() =>
                          check == true ? PatnerDetailScreen() : OTPScreen()),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
