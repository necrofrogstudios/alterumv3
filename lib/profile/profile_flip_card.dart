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
          front: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: theme.accentColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ), //name, creator, tags, intro
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(27.0),
                    child: Image.network('https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: 0.2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.accentColor,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                              ),
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                primary: theme.primaryColor,
                                textStyle: const TextStyle(fontSize: 15),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => roleplay_character()),
                                );
                              },
                              child: const Text('Park Jimin'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
