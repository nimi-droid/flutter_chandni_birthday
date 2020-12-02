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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, size: 30)),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        Text(person.personalMessage,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.black, fontSize: 30)),
                        SizedBox(height: 20),
                        Text(person.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.black, fontSize: 30))
                      ],
                    ),
                    Hero(
                      tag: person.assetImagePath,
                      child: Opacity(opacity: .15, child: Image.asset(person.assetImagePath)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
