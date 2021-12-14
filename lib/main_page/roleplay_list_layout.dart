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
            height: 50,
            color: theme.accentColor,
            decoration: BoxDecoration(border: Border.all(color: theme.splashColor, size: 4)),
            child: const Center(child: Text('Entry A')),
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
