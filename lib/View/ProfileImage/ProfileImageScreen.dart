import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/ProfileDetail/ProfileDetailScreen.dart';

class ProfileImageScreen extends StatelessWidget {
  const ProfileImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: heights / 20,
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
                Center(
                  child: Text(
                    'Complete Your Profile',
                    style: TextStyle(
                      fontSize: widths / 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: heights / 20,
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Icon(
                      Icons.person,
                      size: 44,
                    ),
                  ),
                ),
                SizedBox(
                  height: heights / 10,
                ),
                GestureDetector(
                  onTap: () => Get.off(() => ProfileDetailScreen()),
                  child: Container(
                    width: widths / 1.3,
                    height: heights / 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DynamicColor().primarycolor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Upload',
                      style:
                          TextStyle(color: Colors.white, fontSize: widths / 22),
                    ),
                  ),
                ),
                SizedBox(
                  height: heights / 40,
                ),
                GestureDetector(
                  onTap: () => Get.off(() => ProfileDetailScreen()),
                  child: Container(
                    width: widths / 1.3,
                    height: heights / 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DynamicColor().textcolor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Skip',
                      style:
                          TextStyle(color: Colors.white, fontSize: widths / 22),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
