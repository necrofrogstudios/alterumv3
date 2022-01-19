import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

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

class solo_main extends StatefulWidget {
  solo_main({Key key, this.title}) : super(key: key);

  final String title;

  @override
  solo_mainState createState() => solo_mainState();
}

class solo_mainState extends State<solo_main> with TickerProviderStateMixin {
  final currentScreen = solo_main;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> images = [
    "https://th.bing.com/th/id/OIP._qHh64G9n7v_I4ThR3dEngHaHa?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.6Nepn0j46UEPZAI1S-n7cAHaHa?pid=ImgDet&rs=1",
    "https://www.thefamouspeople.com/profiles/images/john-cena-8.jpg",
    "https://images.genius.com/55b1c5a277d7bd9b124027f96085e3f2.1000x1000x1.jpg",
    "https://th.bing.com/th/id/OIP.5hmPeemCMT2wyhElgFqMogHaHa?pid=ImgDet&rs=1",
  ];
  List<String> names = [
    "Park Jimin",
    "Kim Jaejoong",
    "John Cena",
    "Kai",
    "Tyler Blackburn"
  ];
  //_swipeItems[index].content.text2,//

  List<String> info = [
    "Park Jiminz",
    "Kim Jaejoong",
    "John Cena",
    "Kai",
    "Tyler Blackburn"
  ];
  List<String> items = [
    "Popular",
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
    CardController controller;
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
            Container(color: theme.splashColor, height: 2),
            Container(
              color: theme.backgroundColor,
              child: Column(
                children: [
                  solo_navigation(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: TinderSwapCard(
                        swipeUp: true,
                        swipeDown: true,
                        orientation: AmassOrientation.TOP,
                        totalNum: images.length,
                        stackNum: 2,
                        swipeEdge: 4.0,
                        maxWidth: MediaQuery.of(context).size.width * 0.9,
                        maxHeight: MediaQuery.of(context).size.width * 0.9,
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        minHeight: MediaQuery.of(context).size.width * 0.8,
                        cardBuilder: (context, index) => FlipCard(
                          fill: Fill.fillBack,
                          direction: FlipDirection.HORIZONTAL,
                          front: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: theme.splashColor,
                                    width: 4,
                                  ),
                                ),
                                height: 500,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(26.0),
                                      child: Image.network('${images[index]}'),
                                    ),
                                    Text('test'),
                                  ],
                                ),
                              ),
                            ),
                          ), //back of card  V V V V //
                          back: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: theme.accentColor,
                                  borderRadius: BorderRadius.circular(26),
                                  border: Border.all(
                                    color: theme.splashColor,
                                    width: 4,
                                  ),
                                ),
                                height: 400,
                                width: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.person_add,
                                          size: 40,
                                          color: theme.primaryColor,
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.email,
                                          ),
                                          iconSize: 40,
                                          color: theme.primaryColor,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.group_add,
                                          size: 47,
                                          color: theme.primaryColor,
                                        ),
                                        Icon(
                                          Icons.block,
                                          size: 40,
                                          color: theme.primaryColor,
                                        ),
                                      ],
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
