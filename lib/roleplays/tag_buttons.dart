import 'package:flutter/material.dart';

class tag_buttons extends StatelessWidget {
  List<Widget> tags;
  final List<String> items = [
    'action',
    'adventure',
    'first pov',
    'rated m',
    'all orientations'
  ];

  Widget build(BuildContext context) {
    for (int i; i < items.length; i++) {
      tags.add(
        Text(
          items[index],
          style: TextStyle(fontSize: 12, color: theme.primaryColor),
        ),
      );
    }

    var theme = Theme.of(context);
    return Container(
      color: theme.accentColor,
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
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
              child: Row(
                children: tags,
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
