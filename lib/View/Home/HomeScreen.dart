import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/Controller/HomeController.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: DynamicColor().whitecolor,
        width: widths,
        height: heights,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: widths,
                height: heights / 7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFE0E0E0))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, left: 8.0),
                            child: Text('What are you thinking?'),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: DynamicColor().textcolor,
                      thickness: 0.25,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Icon(
                          Icons.image,
                          size: widths / 23,
                          color: DynamicColor().primarycolor,
                        ),
                        Text("Photos"),
                        Spacer(),
                        Icon(
                          Icons.location_on_sharp,
                          size: widths / 23,
                          color: DynamicColor().primarycolor,
                        ),
                        Text("Check In"),
                        Spacer(),
                        Image.asset(
                          'assets/tagicon.png',
                          width: widths / 23,
                          height: heights / 55,
                        ),
                        Text("Tag"),
                        Spacer(),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: heights / 1.2,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: heights / 1.8,
                            width: widths,
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
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8.0),
                                          child: Text(
                                            'Pete Dug',
                                            style: TextStyle(
                                                fontSize: widths / 24),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1.0, right: 8.0),
                                          child: Text('31 min ago',
                                              style: TextStyle(
                                                  fontSize: widths / 42,
                                                  color: DynamicColor()
                                                      .primarycolor)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/MenuIcon.png',
                                        width: widths / 23,
                                        height: heights / 55,
                                      ),
                                    ),
                                    //image
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Image.asset(
                                    "assets/Post_Image.png",
                                    width: widths,
                                    height: heights / 4.5,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Nunc vulputate mauris ac felis bibendum, et vehicula massa maximus.'
                                            ' Suspendisse malesuada lorem id efficitur vehicula. ',
                                        style: TextStyle(
                                            color: DynamicColor().textcolor,
                                            fontSize: widths / 30),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '#post',
                                            style: TextStyle(
                                                color:
                                                    DynamicColor().primarycolor,
                                                fontSize: 11),
                                          )
                                        ]),
                                  ),
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_alt,
                                          size: 18,
                                          color: DynamicColor().primarycolor,
                                        ),
                                        Text(
                                          '8K Likes',
                                          style: TextStyle(
                                              fontSize: widths / 35,
                                              color: DynamicColor().textcolor),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: widths / 20,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Image.asset(
                                            'assets/Chat_icon.png',
                                            width: widths / 23,
                                            height: heights / 55,
                                          ),
                                        ),
                                        Text(
                                          '8K Comments',
                                          style: TextStyle(
                                              fontSize: widths / 35,
                                              color: DynamicColor().textcolor),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/share_icon.png',
                                            width: widths / 23,
                                            height: heights / 55,
                                          ),
                                        ),
                                        Text(
                                          '8 shares',
                                          style: TextStyle(
                                              fontSize: widths / 35,
                                              color: DynamicColor().textcolor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: heights / 300,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, left: 8.0),
                                  child: Container(
                                    height: heights / 20,
                                    width: MediaQuery.of(context).size.width,
                                    child: new TextField(
                                      decoration: new InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          borderSide: BorderSide(
                                            color: DynamicColor().textcolor,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          borderSide: BorderSide(
                                            color: DynamicColor().textcolor,
                                            width: 1.0,
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: new ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: Image.asset(
                                              'assets/Rectangle.png',
                                              width: 10,
                                              height: 10,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        suffixIcon: Icon(
                                          Icons.camera_alt,
                                          size: 18,
                                          color: DynamicColor().primarycolor,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                            const Radius.circular(50.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: DynamicColor().textcolor,
                                          ),
                                        ),
                                        filled: true,
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            color: DynamicColor().textcolor),
                                        hintText: "Write a comment...",
                                        contentPadding: EdgeInsets.all(5.0),
                                        //fillColor: DynamicColor().textcolor
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
