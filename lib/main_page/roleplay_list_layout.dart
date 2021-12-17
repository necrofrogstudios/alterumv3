import 'package:flutter/material.dart';
import 'package:testing/roleplays/roleplay_main.dart';

class roleplay_list_layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SingleChildScrollView(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => roleplay_main(roleplays)),
              );
            },
            child: Padding(
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
                          image: NetworkImage("https://timelinecovers.pro/facebook-cover/download/outer-space-planets-facebook-cover.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      child: Text(
                        '【僕の戦争】─ My War ─│FREEVERSE RP | HAPPY ONE YEAR !!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        'Creators: Guarded, basketcase101, MrCarrot, DeadPan',
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
                        'Active 2 seconds ago',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
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
      ),
    );
  }
}
