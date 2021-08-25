import 'package:flutter/material.dart';
import 'package:polycon/Constant/Colors.dart';

class AddFriendScreen extends StatelessWidget {
  const AddFriendScreen({Key? key}) : super(key: key);

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
            height: heights / 1.2,
            child: ListView.builder(
                itemCount: 5,
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
                                            color:
                                                DynamicColor().secondaryColor,
                                            fontSize: widths / 27),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'sent you a friend request',
                                            style: TextStyle(
                                                color: DynamicColor().textcolor,
                                                fontSize: widths / 35),
                                          )
                                        ]),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, left: 12.0),
                                      child: Container(
                                        width: widths / 5,
                                        height: heights / 35,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: DynamicColor().primarycolor,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Text(
                                          'Enter',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: widths / 35),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, left: 5.0),
                                      child: Container(
                                        width: widths / 5,
                                        height: heights / 35,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: DynamicColor().textcolor,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Text(
                                          'Delete',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: widths / 35),
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
                                child: Icon(
                                  Icons.clear,
                                  size: widths / 25,
                                  color: DynamicColor().secondaryColor,
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
