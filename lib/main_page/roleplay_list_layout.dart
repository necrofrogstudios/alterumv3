import 'package:flutter/material.dart';

class roleplay_list_layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
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
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://64.media.tumblr.com/f86ecff1d27a1dac6dddd7b508e2c3b4/f0a5ab12d64fb419-55/s640x960/acc14da759877dbe17b8bbb425251aade41b37a1.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      child: Text(
                        '【僕の戦争】─ My War ─│FREEVERSE ANIME RP | HAPPY ONE YEAR !!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                    ),
                  ],
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
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
