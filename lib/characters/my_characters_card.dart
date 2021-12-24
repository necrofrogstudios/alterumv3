import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/roleplays/roleplay_main.dart';
import 'package:testing/popular_widgets/roleplay_tag_buttons.dart';
import 'package:testing/roleplays/roleplay_character.dart'

class my_characters_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Container(
              decoration: BoxDecoration(
                color: theme.accentColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ), //name, creator, tags, intro
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: FittedBox(
                      child: Image.network('https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'),
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
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      ' The Haunted Hotel of Jefferson',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 20),
                    ),
                  ),
                  Container(color: theme.splashColor, height: 4, width: 100),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      '164 favorites, 37 active roleplayers',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      'Admins: Guarded, basketcase101, MrCarrot',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Container(color: theme.splashColor, height: 4, width: 100),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: tag_buttons(),
                  ),
                  Container(color: theme.splashColor, height: 4, width: 100),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 0),
                    child: FlatButton(
                      color: theme.backgroundColor,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      height: 60.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => roleplay_character()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Join',
                            style: TextStyle(
                              fontSize: 30,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
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
