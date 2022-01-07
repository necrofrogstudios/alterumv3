import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class profile_flip_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: theme.splashColor,
                    width: 4,
                  ),
                ),
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(27.0),
                  child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
                ),
              ),
            ),
          ), //back of card  V V V V //
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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      ' Park Jimin',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'activity p',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'another',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
