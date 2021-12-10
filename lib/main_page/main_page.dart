import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class main_page extends StatelessWidget {
  final currentScreen = main_page;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primaryColor),
        centerTitle: true,
        title: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Text(
            'Alterum',
            style: TextStyle(color: theme.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        backgroundColor: myColor,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: SimpleAccountMenu(
              icons: [
                Icon(Icons.person),
                Icon(Icons.email),
                Icon(Icons.group),
              ],
              iconColor: theme.primaryColor,
              onChange: (index) {
                print(index);
              },
            ),
          ),
        ],
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(color: theme.splashColor, height: 4),
              profile_top_buttons(),
              Container(color: theme.splashColor, height: 4),
              ListView(
                padding: EdgeInsets.only(top: 50.0),
                children: [
                  _buildComplexMarquee(),
                ].map(_wrapWithStuff).toList(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.accentColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\u00a9 2022 Alterum',
                      style: TextStyle(
                        color: theme.primaryColor.withOpacity(0.45),
                        fontSize: 15,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Contact Support',
                        style: TextStyle(color: theme.primaryColor),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildComplexMarquee() {
  return Marquee(
    text: 'GeeksforGeeks is a one-stop destination for programmers.',
    style: TextStyle(fontWeight: FontWeight.bold),
    scrollAxis: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    blankSpace: 20.0,
    velocity: 100.0,
    pauseAfterRound: Duration(seconds: 1),
    showFadingOnlyWhenScrolling: true,
    fadingEdgeStartFraction: 0.1,
    fadingEdgeEndFraction: 0.1,
    numberOfRounds: 3,
    startPadding: 10.0,
    accelerationDuration: Duration(seconds: 1),
    accelerationCurve: Curves.linear,
    decelerationDuration: Duration(milliseconds: 500),
    decelerationCurve: Curves.easeOut,
  );
}

// Styling the Marquee
Widget _wrapWithStuff(Widget child) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Container(height: 50.0, color: Colors.white, child: child),
  );
}
