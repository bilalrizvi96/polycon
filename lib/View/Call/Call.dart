import 'dart:math';

import 'package:flutter/material.dart';
import 'package:polycon/Constant/Colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);
  Widget today(context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Today',
              style: TextStyle(
                  color: DynamicColor().primarycolor,
                  fontSize: widths / 24,
                  fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70.0),
                            child: Image.asset(
                              'assets/Rectangle.png',
                              width: widths / 8,
                              height: heights / 16,
                              fit: BoxFit.fill,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4.0, left: 12.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Adam Judy  ',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontSize: widths / 27),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2.0, left: 12.0),
                                    child: Transform.rotate(
                                      angle: 2.3,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        size: widths / 22,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2.0, left: 12.0),
                                    child: Transform.rotate(
                                      angle: pi / -4,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        size: widths / 22,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('4:32 pm',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontSize: widths / 35)),
                                Icon(
                                  Icons.phone,
                                  size: widths / 22,
                                  color: DynamicColor().primarycolor,
                                ),
                              ],
                            ),
                          ),
                          //image
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Divider(
                          color: DynamicColor().textcolor,
                          thickness: 0.25,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget yesterday(context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Yesterday',
              style: TextStyle(
                  color: DynamicColor().primarycolor,
                  fontSize: widths / 24,
                  fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70.0),
                            child: Image.asset(
                              'assets/Rectangle.png',
                              width: widths / 8,
                              height: heights / 16,
                              fit: BoxFit.fill,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4.0, left: 12.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Adam Judy  ',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontSize: widths / 27),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2.0, left: 12.0),
                                    child: Transform.rotate(
                                      angle: 2.3,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        size: widths / 22,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2.0, left: 12.0),
                                    child: Transform.rotate(
                                      angle: pi / -4,
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        size: widths / 22,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('4:32 pm',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontSize: widths / 35)),
                                Icon(
                                  Icons.phone,
                                  size: widths / 22,
                                  color: DynamicColor().primarycolor,
                                ),
                              ],
                            ),
                          ),
                          //image
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Divider(
                          color: DynamicColor().textcolor,
                          thickness: 0.25,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: DynamicColor().whitecolor,
        width: widths,
        height: heights,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: heights / 3, child: today(context)),
              Container(height: heights / 3, child: yesterday(context)),
            ],
          ),
        ),
      ),
    );
  }
}
