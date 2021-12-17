import 'package:flutter/material.dart';

class tag_buttons extends StatelessWidget {
  final List<String> items = [
    'action',
    'adventure',
    'first pov',
    'rated m',
    'all orientations',
    'test',
    'test',
    'test',
    'test1111111111111111',
  ];
  List<Widget> tags = [];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    for (int i = 0; i < items.length; i++) {
      tags.add(
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
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
              onPressed: () {},
            ),
          ),
        ),
      );
    }
    return Wrap(
      children: [
        ...tags
      ],
    );
  }
}
