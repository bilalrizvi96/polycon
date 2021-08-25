import 'package:flutter/material.dart';
import 'package:polycon/Constant/Colors.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

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
              SizedBox(
                height: heights / 50,
              ),
              Center(
                child: Container(
                  height: heights / 25,
                  width: MediaQuery.of(context).size.width / 1.2,
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
                      hintStyle: TextStyle(color: DynamicColor().textcolor),
                      hintText: "Search Profile",
                      contentPadding: EdgeInsets.all(5.0),
                      //fillColor: DynamicColor().textcolor
                      // ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8.0),
                child: Text(
                  '321 Friends',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: widths / 24,
                      color: DynamicColor().primarycolor),
                ),
              ),
              SizedBox(
                height: heights / 50,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
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
          ),
        ),
      ),
    );
  }
}
