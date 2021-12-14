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
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    '【僕の戦争】─ My War ─│FREEVERSE ANIME RP | HAPPY ONE YEAR !!!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Admins: Guarded, basketcase101, PeterPan, MrRabbit',
                    style: TextStyle(color: theme.primaryColor, fontSize: 12),
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
