import 'package:flutter/material.dart';
import 'package:testing/solo/solo_main.dart';

class solo_navigation_buttons extends StatelessWidget {
  final List<String> items = [
    'Create Character',
    'Messages'
  ];
  final List<Widget> navigation = [
    null,
    null,
  ];
  List<Widget> tags = [];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    for (int i = 0; i < items.length; i++) {
      tags.add(
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(4, 5, 4, 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 3.0, color: theme.backgroundColor),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                backgroundColor: theme.accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                items[i],
                style: TextStyle(fontSize: 12, color: theme.primaryColor),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => navigation[i]));
              },
            ),
          ),
        ),
      );
    }
    return Wrap(
      children: tags,
    );
  }
}
