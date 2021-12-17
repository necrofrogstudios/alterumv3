import 'package:flutter/material.dart';

class tag_buttons extends StatelessWidget {
  final List<String> items = [
    'action',
    'adventure',
    'first pov',
    'rated m',
  ];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.backgroundColor,
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 3.0, color: theme.accentColor),
                elevation: 6,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                backgroundColor: theme.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                items[index],
                style: TextStyle(fontSize: 12, color: theme.primaryColor),
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
