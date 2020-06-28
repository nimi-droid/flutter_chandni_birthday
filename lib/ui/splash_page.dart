import 'dart:async';

import 'package:chandnibirthday/route_animations.dart';
import 'package:chandnibirthday/utils.dart';
import 'package:chandnibirthday/walkthrough/walkthrough_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var splashDuration = 2000;

  @override
  void initState() {
    super.initState();
    startCountdownTimer();
    Utils.hideKeyBoard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(child: Icon(Icons.ac_unit)),
              ),
            ),
          ],
        ));
  }

  Future<Timer> startCountdownTimer() async {
    final _duration = Duration(milliseconds: splashDuration);
    return Timer(_duration, navigateToPage);
  }

  void navigateToPage() {
    Navigator.pushAndRemoveUntil(context, RouteAnimationFadeIn(WalkThroughContainer(), false),
        (Route<dynamic> route) => false);
  }
}
