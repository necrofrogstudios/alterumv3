import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';

import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/drawer.dart';

class Content {
  final String text;
  final Color color;

  Content({this.text, this.color});
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
  List<String> _names = [
    "Park Jimin",
    "Kim Jaejoong",
    "John Cena",
    "Kai",
    "Tyler Blackburn"
  ];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: _names[i], color: _colors[i]),
          likeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

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
        color: theme.backgroundColor,
        child: Column(
          children: [
            Container(
              height: 550,
              child: SwipeCards(
                matchEngine: _matchEngine,
                itemBuilder: (BuildContext context, int index) {
                  return FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Container(
                        alignment: Alignment.center,
                        color: _swipeItems[index].content.color,
                        child: Text(
                          _swipeItems[index].content.text,
                          style: TextStyle(fontSize: 100),
                        ),
                      ),
                    ),
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
                        child: Text('yay'),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _matchEngine.currentItem?.nope();
                  },
                  child: Text("Nope"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _matchEngine.currentItem?.superLike();
                  },
                  child: Text("Superlike"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _matchEngine.currentItem?.like();
                  },
                  child: Text("Like"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
