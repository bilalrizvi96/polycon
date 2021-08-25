import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Introduction/WelcomeScreen.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
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
                        height: heights / 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
                        child: Text(
                          'Welcome to Polycon',
                          style: TextStyle(
                              fontSize: widths / 15,
                              color: DynamicColor().primarycolor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Complete Your Profile',
                        style: TextStyle(
                          fontSize: widths / 22,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 0.0, right: 260),
                        child: Text(
                          'Personal',
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
                                hintStyle: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
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
                                hintStyle: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                hintText: "Enter Last Name",
                              ),
                            ),
                          ),
                        ],
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
                                hintStyle: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                hintText: "City",
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
                                hintStyle: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                hintText: "Country",
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
                            hintStyle: TextStyle(
                                color: DynamicColor().textcolor, fontSize: 11),
                            hintText: "Mobile No.",
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
                              Icons.email,
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
                            hintStyle: TextStyle(
                                color: DynamicColor().textcolor, fontSize: 11),
                            hintText: "Enter Email",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 0.0, right: 160),
                        child: Text(
                          'Education & Workplace',
                          style: TextStyle(
                              fontSize: widths / 26,
                              color: DynamicColor().primarycolor,
                              fontWeight: FontWeight.bold),
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
                              Icons.school,
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
                            hintStyle: TextStyle(
                                color: DynamicColor().textcolor, fontSize: 11),
                            hintText: "School or University",
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
                              Icons.work,
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
                            hintStyle: TextStyle(
                                color: DynamicColor().textcolor, fontSize: 11),
                            hintText: "Workplace",
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
                              Icons.portrait_sharp,
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
                            hintStyle: TextStyle(
                                color: DynamicColor().textcolor, fontSize: 11),
                            hintText: "Post / Designation",
                          ),
                        ),
                      ),

                      SizedBox(
                        height: heights / 50,
                      ),
                      GestureDetector(
                        onTap: () => Get.off(() => WelcomeScreen()),
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
                      ),
                      SizedBox(
                        height: heights / 50,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 200.0),
                      //   child: Text(
                      //     'Forget Password?',
                      //     style: TextStyle(fontSize: 10, color: DynamicColor().textcolor),
                      //     textAlign: TextAlign.left,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: heights / 50,
                      // ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 60, right: 10),
                      //       child: Container(
                      //         width: widths / 3.4,
                      //         height: heights / 1000,
                      //         color: DynamicColor().textcolor,
                      //       ),
                      //     ),
                      //     Text('OR'),
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 10, right: 10),
                      //       child: Container(
                      //         width: widths / 3.4,
                      //         height: heights / 1000,
                      //         color: DynamicColor().textcolor,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: heights / 10,
                      // ),
                      // GestureDetector(
                      //   onTap: () => Get.off(() => LoginScreen()),
                      //   child: Container(
                      //     width: widths / 1.2,
                      //     height: heights / 20,
                      //     alignment: Alignment.center,
                      //     decoration: BoxDecoration(
                      //         color: Colors.black,
                      //         borderRadius: BorderRadius.circular(10.0)),
                      //     child: Text(
                      //       'Sign Up',
                      //       style: TextStyle(
                      //           color: Colors.white, fontSize: widths / 22),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: heights / 40,
                      // ),
                      // GestureDetector(
                      //   onTap: () => Get.off(() => LoginScreen()),
                      //   child: Container(
                      //     width: widths / 1.2,
                      //     height: heights / 20,
                      //     alignment: Alignment.center,
                      //     decoration: BoxDecoration(
                      //         color: Colors.black,
                      //         borderRadius: BorderRadius.circular(10.0)),
                      //     child: Text(
                      //       'Sign Up as a Couple',
                      //       style: TextStyle(
                      //           color: Colors.white, fontSize: widths / 22),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
