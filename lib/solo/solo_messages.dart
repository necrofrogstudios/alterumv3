import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
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
              child: Image.network('${welcomeImages[index]}'),
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
