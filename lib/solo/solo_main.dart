import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';

class Content {
  final String text;
  final String text2;
  final Image child;

  Content({this.text, this.child, this.text2});
}

class solo_main extends StatefulWidget {
  solo_main({Key key, this.title}) : super(key: key);

  final String title;

  @override
  solo_mainState createState() => solo_mainState();
}

class solo_mainState extends State<solo_main> {
  final currentScreen = solo_main;

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
                  Container(
                    height: 450,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                          child: Text(
                            'sorry, no more users. come back later or try resetting your filters',
                            style: TextStyle(color: theme.primaryColor, fontSize: 20),
                          ),
                        ),
                        SwipeCards(
                          matchEngine: _matchEngine,
                          itemBuilder: (BuildContext context, int index) {
                            return FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              front: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: theme.accentColor,
                                    border: Border.all(color: theme.splashColor, width: 3.0),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(29.0),
                                        child: _swipeItems[index].content.child,
                                      ),
                                      Text(
                                        _swipeItems[index].content.text,
                                        style: TextStyle(fontSize: 20, color: theme.primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ), // BACK OF CARD //
                              back: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.accentColor,
                                    border: Border.all(color: theme.splashColor, width: 3.0),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text(
                                          _swipeItems[index].content.text2,
                                          style: TextStyle(fontSize: 20, color: theme.primaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          onStackFinished: () {
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text("Stack Finished"),
                                duration: Duration(milliseconds: 500),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 3.0, color: theme.accentColor),
                            elevation: 6,
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            backgroundColor: theme.backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            _matchEngine.currentItem?.nope();
                          },
                          child: Text(
                            "Nope",
                            style: TextStyle(color: theme.primaryColor, fontSize: 15),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 3.0, color: theme.accentColor),
                            elevation: 6,
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            backgroundColor: theme.backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            _matchEngine.currentItem?.superLike();
                          },
                          child: Text(
                            "Super Like",
                            style: TextStyle(color: theme.primaryColor, fontSize: 15),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 3.0, color: theme.accentColor),
                            elevation: 6,
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            backgroundColor: theme.backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            _matchEngine.currentItem?.like();
                          },
                          child: Text(
                            "Like",
                            style: TextStyle(color: theme.primaryColor, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
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

  @override
  void initState() {
    for (int i = 0; i < names.length; i++) {
      _swipeItems.add(
        SwipeItem(
          content: Content(text: names[i], text2: info[i], child: images[i]),
          likeAction: () {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text("Liked ${names[i]}"),
                duration: Duration(milliseconds: 500),
              ),
            );
          },
          nopeAction: () {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text("Nope ${names[i]}"),
                duration: Duration(milliseconds: 500),
              ),
            );
          },
          superlikeAction: () {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text("Superliked ${names[i]}"),
                duration: Duration(milliseconds: 500),
              ),
            );
          },
        ),
      );
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }
}
