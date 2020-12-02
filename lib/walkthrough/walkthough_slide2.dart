import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../styles.dart';

class WalkThroughSlide2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: isIOS ? screenHeight * 0.9 / 100 : screenHeight * .02,
          ),
          Image.asset('assets/images/mainPage2.jpg',
//            walk_through_image2,
            height: isIOS ? screenHeight * .437 : screenHeight * .444,
            width: isIOS ? screenWidth * .848 : screenWidth * 0.744,
            //fit: BoxFit.cover,
          ),
          SizedBox(
            height: screenHeight * 8.9 / 100,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '1st unlockdown birthday',
                style: isIOS ? tsDarkGreyBlueBoldTs26 : tsDarkGreyBlueBoldTs24),
          ),
          SizedBox(height: isIOS ? screenHeight * 2.2 / 100 : screenHeight * 0.9 / 100),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Hadd kar rhi he Pratiksha tu 🥺\nTujhe nahi batati",
                style: isIOS ? tsDarkGreyBlue60BoldTs16 : tsDarkGreyBlue60BoldTs14)
          )
        ],
      ),
    );
  }
}
