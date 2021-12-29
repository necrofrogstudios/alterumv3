import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:testing/setting/settings.dart';

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
                navigateAfterSeconds: settings(),
                title: new Text(
                  'Alterum',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Hind', fontSize: 85.0, color: Colors.white),
                ),
                image: new Image.network('https://64.media.tumblr.com/790a083707bfdebd13c1402d379819e5/a1f1573f7a82fb7a-60/s400x600/515120468323d5a588bdd23196db9085072cf3cd.jpg'),
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
