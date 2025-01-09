import 'package:flutter/material.dart';
import 'package:why_me/helpers/my_colors.dart';
import 'package:get/get.dart';
import 'package:why_me/views/screens/screen_home.dart';
class ScreenSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), navigateToNextScreen);
    return Scaffold(

      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            MyColors.radial1,
            MyColors.radial2,

          ])
        ),
        child: Image.asset("assets/images/logo y me@3x 1.png"),
      )
    );
  }
  void navigateToNextScreen() {
    Get.offAll(ScreenHome());
  }
}
/// Stack
/// it take multiple widgets
/// take hight and width according to parent and child
///Sized Box
///it used by that widget with specific hight and width
