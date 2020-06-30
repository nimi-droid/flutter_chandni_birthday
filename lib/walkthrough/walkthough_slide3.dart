import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../styles.dart';

class WalkThroughSlide3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: isIOS ? screenHeight * 1 / 100 : screenHeight * 1.5 / 100,
          ),
          Container(
//            walk_through_image3,
            color: AppColors.pinkColor,
            height: isIOS ? screenHeight * .49 : screenHeight * .497,
            width: isIOS ? screenWidth * .739 : screenWidth * .617,
          ),
          SizedBox(
            height: isIOS ? screenHeight * 3.6 / 100 : screenHeight * 3.9 / 100,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '1st workorholic Birthday ( Jaldi bta jaldi bta jaldi bta)',
                style: isIOS ? tsDarkGreyBlueBoldTs26 : tsDarkGreyBlueBoldTs24),
          ),
          SizedBox(height: isIOS ? screenHeight * 2.2 / 100 : screenHeight * 0.9 / 100),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Aim at the top of leaderboard and get more benefits. Top users earn more '
                    'rewards.',
                style: isIOS ? tsDarkGreyBlue60BoldTs16 : tsDarkGreyBlue60BoldTs14),
          )
        ],
      ),
    );
  }
}
