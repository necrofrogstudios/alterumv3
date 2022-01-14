import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/solo/solo_navigation.dart';

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "https://img.freepik.com/free-vector/cute-rabbit-with-duck-working-laptop-cartoon-illustration_56104-471.jpg?size=626&ext=jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm8xLT6Bgx5vAKcPDLGdd2nrhHMWpJ02tOrQ&usqp=CAU",
    "https://swall.teahub.io/photos/small/138-1388931_kawaii-cute-stitch.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Container(color: theme.splashColor, height: 4),
          profile_top_buttons(),
          Container(color: theme.splashColor, height: 4),
          Container(
            color: theme.backgroundColor,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: new TinderSwapCard(
                swipeUp: true,
                swipeDown: true,
                orientation: AmassOrientation.BOTTOM,
                totalNum: welcomeImages.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child: FlipCard(
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
                            Image.network('${welcomeImages[index]}'),
                            Text('name'),
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
                                'name',
                                style: TextStyle(fontSize: 20, color: theme.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
            ),
          ),
          footer(),
        ],
      ),
    );
  }
}
