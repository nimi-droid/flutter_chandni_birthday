import 'package:chandnibirthday/app_colors.dart';
import 'package:chandnibirthday/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key key, this.person}) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Text(person.personalMessage,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.black, fontSize: 30)),
            SizedBox(height: 20),
            Text(person.name,
                textAlign: TextAlign.center, style: TextStyle(color: AppColors.black, fontSize: 30))
          ],
        ),
      ),
    );
  }
}
