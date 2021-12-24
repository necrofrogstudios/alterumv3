import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/roleplays/roleplay_main.dart';
import 'package:testing/popular_widgets/roleplay_tag_buttons.dart';

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
                          MaterialPageRoute(builder: (context) => roleplay_main()),
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
        ), //cherry blossoms vvv//
        Padding(
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://149369349.v2.pressablecdn.com/wp-content/uploads/2013/01/Mar-cover-photo-3769.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    'cherry bolossom studios~ love for everyone~',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Creators: Guarded, basketcase101, frog',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Tags: action, adventure, first pov, active',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'With 791808 posts, 67 votes, 164 favorites, 26840 views, 411 comments',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Active 56 seconds ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://traveloffice.org/wp-content/uploads/2018/09/fall-leaves-tree.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    'OWL CITY || First & Third POV || All Orientations Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Creators: Guarded, basketcase101, MrCarrot',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Tags: action, adventure, first pov, active',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'With 791808 posts, 67 votes, 164 favorites, 26840 views, 411 comments',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Active 3 minutes ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
