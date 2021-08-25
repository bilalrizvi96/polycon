import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/Call/Call.dart';
import 'package:polycon/View/Chat/ChatScreen.dart';

class TabViewMessangerScreen extends StatelessWidget {
  const TabViewMessangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              expandedHeight: heights / 5.8,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Spacer(),
                    Column(
                      children: [
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
                                width: widths / 30,
                              ),
                              Image.asset(
                                'assets/ChatIcon.png',
                                width: widths / 18,
                                height: heights / 50,
                              ),
                              SizedBox(
                                width: widths / 50,
                              ),
                              Text('Messages'),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(70.0),
                            //   child: Image.asset(
                            //     'assets/Rectangle.png',
                            //     width: widths / 8,
                            //     height: heights / 16,
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
                            // Container(
                            //   width: widths / 8,
                            //   height: heights / 16,
                            //   decoration: BoxDecoration(
                            //       color: DynamicColor().primarycolor,
                            //       borderRadius: BorderRadius.circular(100.0)),
                            //   child: Icon(
                            //     Icons.person,
                            //     size: 22,
                            //   ),
                            // ),
                            Spacer(),
                            Container(
                              height: heights / 23,
                              width: MediaQuery.of(context).size.width / 1.3,
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
                                  prefixIcon: new Icon(Icons.search,
                                      color: DynamicColor().textcolor),
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
                                      color: DynamicColor().textcolor),
                                  hintText: "Search Profile",
                                  contentPadding: EdgeInsets.all(5.0),
                                  //fillColor: DynamicColor().textcolor
                                  // ),
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                    // Spacer(),
                    Divider(),
                    Spacer(),
                  ],
                ),
              ),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: DynamicColor().textcolor,
                labelColor: DynamicColor().primarycolor,
                indicatorColor: DynamicColor().primarycolor,
                labelPadding:
                    EdgeInsets.only(right: 80.0, left: 80.0, top: 8.0),
                tabs: [
                  Tab(
                    text: 'Chat',
                  ),
                  Tab(
                    text: 'Call',
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
            new ChatScreen(),
            new CallScreen(),
          ],
        ),
      )),
    );
  }
}
