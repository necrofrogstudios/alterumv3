import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/solo/solo_navigation.dart';

class Content {
  final String text;
  final String text2;
  final Image child;

  Content({this.text, this.child, this.text2});
}

class solo_create_character extends StatefulWidget {
  solo_create_character({Key key, this.title}) : super(key: key);

  final String title;

  @override
  solo_create_characterState createState() => solo_create_characterState();
}

class solo_create_characterState extends State<solo_create_character> {
  final currentScreen = solo_create_character;

  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> names = [
    "Park Jimin",
    "Kim Jaejoong",
    "John Cena",
    "Kai",
    "Tyler Blackburn"
  ];
  List<Image> images = [
    Image.network('https://th.bing.com/th/id/OIP._qHh64G9n7v_I4ThR3dEngHaHa?pid=ImgDet&rs=1'),
    Image.network('https://th.bing.com/th/id/OIP.6Nepn0j46UEPZAI1S-n7cAHaHa?pid=ImgDet&rs=1'),
    Image.network('https://www.thefamouspeople.com/profiles/images/john-cena-8.jpg'),
    Image.network('https://images.genius.com/55b1c5a277d7bd9b124027f96085e3f2.1000x1000x1.jpg'),
    Image.network('https://th.bing.com/th/id/OIP.5hmPeemCMT2wyhElgFqMogHaHa?pid=ImgDet&rs=1'),
  ];
  List<String> info = [
    "Park Jiminz",
    "Kim Jaejoong",
    "John Cena",
    "Kai",
    "Tyler Blackburn"
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Container(color: theme.splashColor, height: 4),
            Container(
              color: theme.backgroundColor,
              child: Column(
                children: [
                  solo_navigation(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                        child: Center(
                          child: Text(
                            'sorry, there are no more characters available at this time. come back later or try resetting your filters',
                            style: TextStyle(color: theme.primaryColor, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            footer(),
          ],
        ),
      ),
    );
  }
}
