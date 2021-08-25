import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:polycon/Constant/Colors.dart';
import 'package:polycon/View/ProfileImage/ProfileImageScreen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    height: heights / 5,
                    width: widths / 1.8,
                  ),
                ),
                Center(
                  child: Text(
                    'We\'ve sent you an OTP',
                    style: TextStyle(
                      fontSize: widths / 26,
                      color: DynamicColor().textcolor,
                    ),
                  ),
                ),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: Colors.black,
                  focusedBorderColor: Colors.black,

                  showFieldAsBox: false,
                  borderWidth: 4.0,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'resend code in ',
                        style: TextStyle(
                            color: DynamicColor().textcolor, fontSize: 11),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 00:15 sec',
                            style: TextStyle(
                                color: DynamicColor().primarycolor,
                                fontSize: 11),
                          )
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.off(() => ProfileImageScreen()),
                  child: Container(
                    width: widths / 1.3,
                    height: heights / 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DynamicColor().primarycolor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Enter',
                      style:
                          TextStyle(color: Colors.white, fontSize: widths / 22),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
