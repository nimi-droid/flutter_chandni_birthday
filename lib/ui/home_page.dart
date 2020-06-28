import 'package:chandnibirthday/app_colors.dart';
import 'package:chandnibirthday/route_animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'message_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Person> mlist = [
    (Person('nimish', "assets/images/img_pratiksha.jpg" ,'hello',)),
    (Person('Rahul', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('Parth', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('Pratiksha', "assets/images/img_pratiksha.jpg",'hello')),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
    (Person('nimish', "assets/images/img_pratiksha.jpg",'hello',)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(10.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: List.generate(
        mlist.length,
        (index) {
          return FriendListItem(person: mlist[index], onTap: onTap, index: index);
        },
      ),
    )));
  }

  void onTap(int index) {
    Navigator.push(
        context, RouteAnimationSlideFromRight(widget: MessagePage(person: mlist[index])));
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
                  style: TextStyle(fontSize: 25, color: AppColors.white)),
            ),
          )),
    );
  }
}

class Person {
  Person(this.name, this.assetImagePath, this.personalMessage);

  final String name;
  final String assetImagePath;
  final String personalMessage;
}
