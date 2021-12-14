import 'package:flutter/material.dart';

class footer extends StatelessWidget {
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
              'Contact Support',
              style: TextStyle(color: theme.primaryColor),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
