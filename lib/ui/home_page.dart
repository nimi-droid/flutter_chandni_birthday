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
  (Person('Chotu', "assets/images/chotu.jpg",`I always want you to be happy in life,because you look great whenever you smile.


Thanks to god just because he gave me a dear one like you .


I wish you to be happy and blessed in your life forever.


Happy birthday Chandu....`,)),
    (Person('Rajesh', "assets/images/rajesh.jpg" ,'Hi Chandni, mereko pehle se hi pata hai is baar... ki aapko pehle se hi pata hoga ki aapka bday aane wala hai... haa haa haa haaa happy birthday ummmmmmm',)),
    (Person('Pratiksha', "assets/images/mainPage1.jpg",`Hi, Happy birthday Darling, Tere birthday ke bare me kya bolu , hamne to 15 days pahale hi shuru kr di thi taiyari chandni ka bdy aane wala he, hehe
      Happy birthday to most amazing bold and fun girl and Meri pyari si flatmate i know hehe
      I wish you will get what you want in life till your next birthday`,)),
    (Person('Alpesh', "assets/images/alpesh.jpg",`Dear Hmm,
Hope your birthday is as special as you are. You’re amazing  never stop being you. 

I’m so glad to have you in my life.
We fight, we argue, we even stop talking for days but our immense bonding will never fade away.
You’re my “Emergency” contact.

I wish!! you always be happy & I will do everything to make you so.
इसीलिए:-
“कुछ तो लोग कहेंगे, लोगों का काम है कहना
छोड़ो बेकार की बातों में कहीं बीत ना जाए रैना.”!!!

Wishing you many happy returns of the day.
Happiest Birthday Chandni 💓
Wish!! I was there.

Thanks for being such a wonderful person. Love you Dfrr 😘 🤗`,)),
    (Person('Shivani', "assets/images/shivani.jpg",`Hey Chandrika !!!
Opppsss Chandni 🌛💓
I want to wish you all the love and happiness in the world, all of which you deserve. Happy birthday my friend! 💃🥳🎂

You are cute, humble, loving and caring person. you are not only the office colleague, you are little sister of mine. 

Stay happy and healthy.. Cheers !! 🥂
Happy Birthday.. Love you 😘😘

We will celebrate your birthday after returing to office.. Take care`,)),
    (Person('Aditya', "assets/images/adityaBhai.jpg",`You supported me when I needed it. You guided me when I was lost. You motivated me when I was doubtful. You are a true inspiration for me throughout my life. I am proud to have a sister like you. I wish you a very happy birthday, and God bless you with everything you want to achieve in this life.Thank you for giving me a shoulder to weep on, when I was sad, Thank you for making me feel special every time by your smile. You mean a lot to me, my dear sister.  I like the way you care. I like the way you read my thoughts. I never had to explain anything because you always understood my feelings better than me. You are not just my sister but a friend, guide and atrue inspiration for me. I wish you a wonderful birthday and let all your dreams come true.
Once again,
HAPPY BIRTHDAY SANTO BHUA❤️❤️`,)),
    (Person('Harshit', "assets/images/Harshit.jpg",'Happy Birthday to one of the few people whose birthday I can remember without a Facebook reminder.')),
    (Person('Piyush', "assets/images/piyush.jpg",`12 years of friendship. Just wanted to remind you that you are very lucky to have a friend like me for so many years🤣.  Sometimes we talk so much for months and sometimes we don't even say hii for months.  It really doesnt matter if we talk or not the thing that really matters is you are my friend and you will  always be one.  I love the way you laugh and the way you talk with your heart and saying anything without thinking twice.  Sometimes its weird. But i admire it.  I am looking forward to many more years of friendship with you. In good times and bad i will always be by your side.  Hope your bday is as special as you are. HAPPY BIRTHDAY.`,)),
    (Person('Gaurav', "assets/images/gaurav.jpg",`Dear Chando,
Hope ur birthday is spacial as you are.I celebrate you today because you deserve every bit of it and more😊. 
We have been friends longer than I care to admit.you've always been a source of joy to everyone around you.thanks for being such a wonderfull, irritating and caring person😝😝.ur smile is terrible. Kp smiling..✌🏼 gd day and happy birthday 🥂`,)),
    (Person('Nishu', "assets/images/nishu.jpg",`My dear best friend,

Here's your birthday today so obviously it would be a special day, not just for you even for me because this is the day when my bestie came into this world...🤩🥰❣️
I am so happy today because finally after so long we are together on your birthday so let's celebrate our past, our future and our present which we have missed....🥳 I pray to god that you will get everything you want in life because you deserve the best😎😌
And finally thankyou for everything which you have done for me 🙏🏻 our friendship is like gold that will never fad so always keep smiling the way you do! Have an amazing day ahead 😘 happy birthday sweat heart 🥰🥳🤩`,)),
    (Person('Gaurav Delhi', "assets/images/GauravDelhi.jpg",`I feel so lucky to have you as my friend. Hope your birthday is as special as you are. May all of your dreams come true. Thanks for being such a great friend. Happy birthday Moonlight !💐💐💐🎂🎂🎂🎂🎂🎂🎂🎂`,)),
    (Person('Nilesh', "assets/images/nilesh.jpg",`Hi Dola
You're an amazing person—never forget that! You deserve the best on your birthday.How can I forget a birthday we celebrated for so many years? Things may have changed between us, but my feelings of affection toward you haven't.
As I close my eyes to bring back all the lovely memories of the times we've shared together, a smile comes to my face. May you see wonderful and joyous times ahead. Here's wishing you a very happy birthday!
Love you☺️`,)),
    (Person('Divyanshu', "assets/images/divyanshu.jpg",`To our little bundle of joy, Happy Birthday! Keep chasing your dreams and spreading happiness. We love you!
      chandi u are too good i have no word for you but fir b bdy h toh bolna toh pdega hi 😛tu na achi h bot caring b h or nature toh bot hi acha h frnd toh bot hi achi h
 `,)),
    (Person('Devesh', "assets/images/devesh.jpg",`Hey !! 

The charming, the sparkling, the jaunty, the frenzied, and the captivating. 

I recall that explosive laughter's, prolonged chit-chats, slightest studies, and that bold attitude whenever I think of you.

Your enthusiasm, positivity, courage and  confidence defines you perfectly. I'm happy to express that we share an awesome bonding and gentle friendship in the minimal time we manage to meet.

Happy birthday to our very own adventurous lady aka fountain of laughter. More strength to you, Keep making us laugh louder and even louder.😄

I miss good old days, I miss you, bitto, Rajat, Nishu & infact all the amazing time we had during school, those smallest and the sweetest memory lies with me all the times wherever I go. Hope you have a great birthday, thanks for making me recall all the pleasant hours. Let's meet sometime at different page of life. Wishing you plenty of goodness girl !!!! ☺️

Happy birthday 🎂🎂

Jiyo Chandu Baba. 💓`,)),
    (Person('Shivani Didi', "assets/images/shivaniDidi.jpg",`My dear चंद्रकांता,

To the good old days when we were small and use to dance 💃🏻 on roof. “इश्क़ चाँदी है इश्क़ सोना है।  सूण सूण बाबा सूण सूण बाबा सूण सूण सूना।”

It’s not what we have in life but who we have in our life that matters. And you matters alo.......t भोलु की छोरी।

Do you remember this pic of my first _ _ _ _ _. (fill in the blanks.)

Just be yourself always, don’t think about others and what you should always know is I am there for you.

Do one thing.......
1. Close your eyes. 2. Imagine you are in Mauritius ( don’t forget me). 3. Surrounded by water on all sides. 4. we are celebrating your birthday over there cheers 🥂.

I am so thankful to have a moti sister like you in my life. Celebrate 🍻 your birthday in a big way! You have always deserved the best. Thanks for being the perfect companion on the rides of SISTERSHIP. 

I am not there on your birthday. But sending lovely wishes to you get plenty of 🥃 🚬 on your birthday.

Love you soooooooooooo much Chandu 💕.`,)),
    (Person('Shubham', "assets/images/shubham.jpg",`Wish you many many happy returns of the day Chandini 🌙 Hope your special day,brings you all that your heart desires
Happy Birthday 🍰 🍻`,)),
    (Person('Nishant', "assets/images/nishant.jpg",`Now, doing the math with the number of candles on your cake, you would be requiring the lungs of the legendary Hercules to blow all these candles by yourself. No, I did not mean you are old and fat! I meant I’m your best friend and I’d help you

Happy birthday to the most beautiful person I have seen until now. And that is only because today is your birthday and I don’t use mirrors.

lets make people uncomfortable and curious 😜😜😜.
We had great time together🤪. Probably we have same dirty mind. I never forget our trip, where we shared beautiful moments together, do you remember the blanket👩‍❤️‍👨. The way you dance at mountains in front of me feels like I was Vishwamitra and you were Menka.💃💃

The above part is full of lies. So, ignore that. 
Happy birthday to my beloved friend, Chandrika Singh Dagur🥳🥳🥳.`,)),
    (Person('Kamal', "assets/images/kamal.jpg",`Dear CSD,
I wish your birthday becomes very special and you get a lot of happiness and joy in your life. May god Fullfill your every wish. I know most of the time it looks like a fairy tale of what we think or wish and which may seem impossible but there is no fun if we get things so straight and yes I believe in fairytales and yes they are possible in life you just have to keep faith on them.

May god bless you with whatever you want in life personal and professional.

Though we spent a very few months together but I hope the days and the memories will remain last forever.I enjoyed your company and wish to stay in touch forever like true friends.

Keep smiling

And at last
I wish you a very happy birthday...`,)),
    (Person('Vikrant', "assets/images/vikrant.jpg" ,`Happy Birthday CSD, 🥳Theek hai! 🥳

I am so thankful and happy that we are best friends. 🤓Theek hai!🤓
You are the cutest HR. 🤪Theek hai!🤪
May this year be even more wonderful and blessed. 😇Theek hai!😇
I pray that may you float through all the year with the brightest smile on your face and I hope that this year would be the most significant year of your life. ☺️Theek hai!☺️
Keep Smiling! 🤗Theek hai!🤗


जन्मदिन की हार्दिक शुभकामनाये  👻 Theek hai! 👻`,)),
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
