import 'package:chandnibirthday/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../wishes_text.dart';
import 'message_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: List.generate(
              mlist.length,
              (index) {
                return FriendListItem(person: mlist[index], onTap: onTap, index: index);
              },
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagePage(person: nimish)));
            },
            child: Hero(
              tag: 'assets/images/nimish.jpeg',
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Image.asset('assets/images/nimish.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Nimish",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, color: AppColors.white, fontWeight: FontWeight.w500)),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    )));
  }

  void onTap(int index) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MessagePage(person: mlist[index])));
  }
}

class FriendListItem extends StatelessWidget {
  final Person person;
  final Function(int index) onTap;
  final int index;

  const FriendListItem({Key key, this.person, this.onTap, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Hero(
        tag: person.assetImagePath,
        child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(person.assetImagePath), fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(person.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25, color: AppColors.white, fontWeight: FontWeight.w500)),
              ),
            )),
      ),
    );
  }
}

class Person {
  Person({@required this.name, @required this.assetImagePath, @required this.personalMessage});

  final String name;
  final String assetImagePath;
  final String personalMessage;
}

final nimish = Person(
    name: 'Nimish',
    assetImagePath: 'assets/images/nimish.jpeg',
    personalMessage: 'Keep Rocking do Power Yoga and Happy Birthday !!!');
