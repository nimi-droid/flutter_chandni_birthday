import 'package:chandnibirthday/walkthrough/walkthough_slide1.dart';
import 'package:chandnibirthday/walkthrough/walkthough_slide2.dart';
import 'package:chandnibirthday/walkthrough/walkthough_slide3.dart';
import 'package:chandnibirthday/walkthrough/walkthough_slide4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../app_colors.dart';
import '../ui/home_page.dart';
import '../primary_button.dart';
import '../route_animations.dart';
import '../styles.dart';

class WalkThroughContainer extends StatefulWidget {
  @override
  State createState() => WalkThroughContainerState();
}

class WalkThroughContainerState extends State<WalkThroughContainer> {
  int currentPage = 0;
  PageController _pageController;
  double screenHeight;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: AppColors.white,
        body: Container(
          color: AppColors.white,
          child: SafeArea(
            bottom: false,
            child: Stack(
              children: <Widget>[pageView(), pageIndicator(), continueButton()],
            ),
          ),
        ));
  }

  Widget pageView() {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        WalkThroughSlide1(),
        WalkThroughSlide2(),
        WalkThroughSlide3(),
        WalkThroughSlide4(),
      ],
      onPageChanged: (pageNumber) {
        setState(() {
          currentPage = pageNumber;
        });
      },
    );
  }

  Widget pageIndicator() {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
          padding:
              EdgeInsets.only(top: isIOS ? screenHeight * 48.5 / 100 : screenHeight * 50.6 / 100),
          child: SmoothPageIndicator(
              controller: _pageController, // PageController
              count: 4,
              effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.pinkColor,
                  dotColor: AppColors.black.withOpacity(0.1),
                  dotHeight: 7,
                  dotWidth: 7,
                  expansionFactor: 2,
                  radius: 3.5)))
    ]);
  }

  Widget continueButton() {
    final double otherBottomMargin = screenHeight * 0.06;
    final double iosBottomMargin = screenHeight * 0.063;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
          padding: EdgeInsets.only(bottom: isIOS ? iosBottomMargin : otherBottomMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SmallPrimaryButton(
                  buttonText: currentPage == 3
                      ? 'Open Best Wishes'
                      : 'Blow Candel',
                  onButtonPressed: nextPage),
              SizedBox(height: isIOS ? screenHeight * .027 : screenHeight * .031),
              if (currentPage != 3)
                InkWell(
                  onTap: () {
                    _moveToNextScreen();
                  },
                  child: Container(
                    height: 30,
                    child: Text('Skip',
                        style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: AppColors.dark_grey_blue,
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              else
                SizedBox(
                  height: 30,
                ),
            ],
          )),
    );
  }

  void nextPage() {
    if (currentPage != 3) {
      _pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
    } else {
      _moveToNextScreen();
    }
  }

  void _moveToNextScreen() {
    Navigator.pushAndRemoveUntil(
        context,
        RouteAnimationSlideFromRight(widget: HomePage()),
        (Route<dynamic> route) => false);
  }
}
