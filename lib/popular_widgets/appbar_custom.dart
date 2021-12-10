import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class marquee extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
Return AppBar(
        iconTheme: IconThemeData(color: theme.primaryColor),
        centerTitle: true,
        title: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Text(
            'Alterum',
            style: TextStyle(color: theme.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        backgroundColor: myColor,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: SimpleAccountMenu(
              icons: [
                Icon(Icons.person),
                Icon(Icons.email),
                Icon(Icons.group),
              ],
              iconColor: theme.primaryColor,
              onChange: (index) {
                print(index);
              },
            ),
          ),
        ],
      );}}