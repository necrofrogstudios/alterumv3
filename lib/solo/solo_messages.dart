import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "https://img.freepik.com/free-vector/cute-rabbit-with-duck-working-laptop-cartoon-illustration_56104-471.jpg?size=626&ext=jpg",
    "https://wallpapercave.com/wp/wp5732639.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm8xLT6Bgx5vAKcPDLGdd2nrhHMWpJ02tOrQ&usqp=CAU",
    "https://swall.teahub.io/photos/small/138-1388931_kawaii-cute-stitch.jpg"
  ];
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
  List<String> items = [
    "Popular",
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      body: new Center(
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
    );
  }
}
