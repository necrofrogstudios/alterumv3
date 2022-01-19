import 'package:flutter/material.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class ExamplePage extends StatefulWidget {
  @override
  ExamplePageState createState() => ExamplePageState();
}

class ExamplePageState extends State<ExamplePage> {
  final currentScreen = ExamplePage;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "blep",
  ];

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: getCardDeck(),
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 200,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
    );
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: SmartRefresher(
        enablePullDown: true,
        header: WaterDropMaterialHeader(backgroundColor: theme.splashColor, color: theme.primaryColor),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {},
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Container(color: theme.splashColor, height: 4),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                deck,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.clear),
                      iconSize: 30,
                      color: Colors.red,
                      onPressed: deck.animationActive ? null : () => deck.swipeLeft(),
                    ),
                    const SizedBox(width: 40),
                    IconButton(
                      icon: const Icon(Icons.check),
                      iconSize: 30,
                      color: Colors.green,
                      onPressed: deck.animationActive ? null : () => deck.swipeRight(),
                    ),
                  ],
                ),
              ],
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }

  List<Card> getCardDeck() {
    List<Card> cardDeck = [];
    for (int i = 0; i < 500; ++i) {
      cardDeck.add(
        Card(
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
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
          ),
        ),
      );
    }
    return cardDeck;
  }
}

/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
