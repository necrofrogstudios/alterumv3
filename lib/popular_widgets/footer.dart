import 'package:flutter/material.dart';
import 'package:testing/support/contact_support.dart';
import 'package:testing/popular_widgets/rules.dart';

class footer extends StatelessWidget {
  final currentScreen = footer;
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '\u00a9 2022 Alterum',
            style: TextStyle(
              color: theme.primaryColor.withOpacity(0.45),
              fontSize: 15,
            ),
          ),
          FlatButton(
            child: Text(
              'Rules',
              style: TextStyle(color: theme.primaryColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => rules(),
              );
            },
          ),
          FlatButton(
            child: Text(
              'Contact Support',
              style: TextStyle(color: theme.primaryColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contact_support(currentScreen)),
              );
            },
          )
        ],
      ),
    );
  }
}
