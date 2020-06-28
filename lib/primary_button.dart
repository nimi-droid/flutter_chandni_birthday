import 'package:chandnibirthday/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class SmallPrimaryButton extends StatelessWidget {
  const SmallPrimaryButton({@required this.buttonText, @required this.onButtonPressed});

  final String buttonText;
  final Function onButtonPressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onButtonPressed();
      },
      child: Container(
          width: isIOS ? screenWidth * .496 : screenWidth * .517,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.pinkColor,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: Center(
            child: Text(buttonText,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w500)),
          )),
    );
  }
}
