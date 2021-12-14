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
                    CircleAvatar(
                      radius: 16.0,
                      child: ClipRRect(
                        child: Image.asset('https://th.bing.com/th/id/R.2d13e2fa22f64af810e32eac96cc6f6b?rik=eOg1FQ9TgI3hcg&pid=ImgRaw&r=0'),
                        borderRadius: BorderRadius.circular(50.0),
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
