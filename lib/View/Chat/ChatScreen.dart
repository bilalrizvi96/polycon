import 'package:flutter/material.dart';
import 'package:polycon/Constant/Colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
          child: Container(
            height: heights,
            child: ListView.builder(
                itemCount: 10,
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
                                  padding: const EdgeInsets.only(
                                      top: 4.0, left: 12.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Adam Judy  ',
                                      style: TextStyle(
                                          color: DynamicColor().secondaryColor,
                                          fontSize: widths / 27),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4.0, left: 12.0),
                                  child: Text(
                                    'Hello What\'s Up',
                                    style: TextStyle(
                                        color: DynamicColor().textcolor,
                                        fontSize: widths / 35),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '4:12pm',
                                  style: TextStyle(
                                      color: DynamicColor().primarycolor,
                                      fontSize: widths / 35),
                                )),
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
        ),
      ),
    );
  }
}
