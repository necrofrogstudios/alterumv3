import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';
import 'package:testing/sign_in/sign_in.dart';
import 'package:testing/popular_widgets/on_boarding_page.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => new _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double logicWidth = 1000;
    double logicHeight = 1000;
    return SizedBox.expand(
      child: Container(
        color: Colors.black,
        child: FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          child: SizedBox(
            width: logicWidth,
            height: logicHeight,
            child: new SplashScreen(
                seconds: 1,
                navigateAfterSeconds: sign_in(),
                title: new Text(
                  'Alterum',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Hind', fontSize: 85.0, color: Colors.white),
                ),
                image: new Image(
                  image: AssetImage('images/masks.png'),
                ),
                photoSize: 200.0,
                backgroundColor: Colors.black,
                styleTextUnderTheLoader: new TextStyle(
                  fontSize: 15,
                ),
                loaderColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
