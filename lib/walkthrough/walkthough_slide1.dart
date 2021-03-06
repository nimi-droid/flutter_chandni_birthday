import 'package:chandnibirthday/app_colors.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class WalkThroughSlide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: isIOS ? screenHeight * 0.032 : screenHeight * .02),
          Image.asset('assets/images/mainPage1.jpg',
            height: isIOS ? screenHeight * 0.463 : screenHeight * 0.47,
            width: isIOS ? screenWidth * 0.848 : screenWidth * 0.714,
            //fit: BoxFit.cover,
          ),
          SizedBox(
            height: isIOS ? screenHeight * 0.041 : screenHeight * 0.065,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Happy Birthday Moti',
                style: isIOS ? tsDarkGreyBlueBoldTs26 : tsDarkGreyBlueBoldTs24),
          ),
          SizedBox(height: isIOS ? screenHeight * 2.2 / 100 : screenHeight * 0.9 / 100),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text:
                      "Mujhe to pta he ki tujhe pta he ki\nAaj tera birthday he",
                  style: isIOS ? tsDarkGreyBlue60BoldTs16 : tsDarkGreyBlue60BoldTs14))
        ],
      ),
    );
  }
}
