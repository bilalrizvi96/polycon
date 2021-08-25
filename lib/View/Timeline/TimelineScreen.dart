import 'package:flutter/material.dart';
import 'package:polycon/Constant/Colors.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: heights,
        width: widths,
        color: DynamicColor().whitecolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: widths,
                height: heights / 6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFE0E0E0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: widths / 24,
                            fontWeight: FontWeight.bold,
                            color: DynamicColor().secondaryColor),
                      ),
                      SizedBox(
                        height: heights / 200,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: DynamicColor().primarycolor,
                          ),
                          SizedBox(
                            width: widths / 40,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Lives in ',
                                style: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Dallas, Texas',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: widths / 35),
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heights / 200,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.school,
                            color: DynamicColor().primarycolor,
                          ),
                          SizedBox(
                            width: widths / 40,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Lives in ',
                                style: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Dallas, Texas',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: widths / 35),
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heights / 200,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.business_center,
                            color: DynamicColor().primarycolor,
                          ),
                          SizedBox(
                            width: widths / 40,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Lives in ',
                                style: TextStyle(
                                    color: DynamicColor().textcolor,
                                    fontSize: 11),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Dallas, Texas',
                                    style: TextStyle(
                                        color: DynamicColor().secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: widths / 35),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heights / 100,
              ),
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
                        Text("aasad"),
                        Spacer(),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
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
                                padding:
                                    const EdgeInsets.only(top: 8.0, left: 8.0),
                                child: Text(
                                  'Pete Dug',
                                  style: TextStyle(fontSize: widths / 24),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 1.0, right: 8.0),
                                child: Text('31 min ago',
                                    style: TextStyle(
                                        fontSize: widths / 42,
                                        color: DynamicColor().primarycolor)),
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
                                      color: DynamicColor().primarycolor,
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
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: Container(
                          height: heights / 20,
                          width: MediaQuery.of(context).size.width,
                          child: new TextField(
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  color: DynamicColor().textcolor,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  color: DynamicColor().textcolor,
                                  width: 1.0,
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: new ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
