import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Friends/FriendsScreen.dart';
import 'package:polycon/View/Gallery/GalleryScreen.dart';
import 'package:polycon/View/Timeline/TimelineScreen.dart';

class ProfileTabViewScreen extends StatelessWidget {
  const ProfileTabViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: DynamicColor().whitecolor,
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    expandedHeight: heights / 2.2,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 20, bottom: 8.0),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: DynamicColor().primarycolor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths / 50,
                                    ),
                                    Container(
                                      height: heights / 23,
                                      width: MediaQuery.of(context).size.width /
                                          1.3,
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
                                          prefixIcon: new Icon(Icons.search,
                                              color: DynamicColor().textcolor),
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(50.0),
                                            ),
                                            borderSide: BorderSide(
                                              color: DynamicColor().textcolor,
                                            ),
                                          ),
                                          filled: true,
                                          hintStyle: TextStyle(
                                              color: DynamicColor().textcolor),
                                          hintText: "Search Profile",
                                          contentPadding: EdgeInsets.all(5.0),
                                          //fillColor: DynamicColor().textcolor
                                          // ),
                                        ),
                                      ),
                                    ),
                                    // Text('Messages'),
                                  ],
                                ),
                              ),
                              Image.asset('assets/Post_Image.png'),

                              // Spacer(),

                              Spacer(),
                            ],
                          ),
                          Positioned(
                            top: heights / 3.5,
                            left: widths / 30,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(70.0),
                                  child: Image.asset(
                                    'assets/Rectangle.png',
                                    width: widths / 5,
                                    height: heights / 10,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Dan Robert',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  'Dallas, USA',
                                  style: TextStyle(
                                      color: DynamicColor().textcolor),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: heights / 2.8,
                            right: widths / 30,
                            child: Icon(
                              Icons.edit,
                              color: DynamicColor().primarycolor,
                              size: widths / 18,
                            ),
                          ),
                          // Spacer(),
                        ],
                      ),
                    ),
                    pinned: true,
                    floating: true,
                    // brightness: Brightness.dark,
                    bottom: TabBar(
                      // indicatorPadding: EdgeInsets.all(10.0),
                      isScrollable: true,
                      unselectedLabelColor: DynamicColor().textcolor,
                      labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
                      labelColor: DynamicColor().primarycolor,
                      indicatorColor: DynamicColor().whitecolor,
                      tabs: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 200.0),
                          child: Text(
                            'Timeline',
                            style: TextStyle(fontSize: widths / 35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            'Friends',
                            style: TextStyle(fontSize: widths / 35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            'Gallery',
                            style: TextStyle(fontSize: widths / 35),
                          ),
                        ),
                        // Tab(
                        //   icon: Icon(Icons.notification_important_sharp,
                        //       color: Colors.black),
                        // ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  new TimelineScreen(),
                  new FriendsScreen(),
                  new GalleryScreen(),
                ],
              ),
            ),
          )),
    );
  }
}
