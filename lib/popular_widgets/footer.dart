import 'package:flutter/material.dart';
import 'package:testing/support/contact_support.dart';
import 'package:testing/popular_widgets/terms_of_use.dart';

class footer extends StatelessWidget {
  final currentScreen = footer;
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton(
            child: Text(
              'FAQ',
              style: TextStyle(color: theme.primaryColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contact_support(currentScreen)),
              );
            },
          ),
          FlatButton(
            child: Text(
              'Terms of Use',
              style: TextStyle(color: theme.primaryColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => terms_of_use(),
                ),
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
          ),
        ],
      ),
    );
  }
}
