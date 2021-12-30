import 'package:flutter/material.dart';
import 'package:testing/main_page/main_page.dart';

class profile_top_buttons extends StatelessWidget {
  final List<String> items = [
    'Create Roleplay',
    'Popular',
    'Solo',
    'Members',
    'Blogs',
    'Settings',
    'Polls',
    'Browse',
    'Customer Support',
  ];
  final List<Widget> navigation = [
    main_page(),
    main_page(),
    main_page(),
    main_page(),
    main_page(),
    main_page(),
    main_page(),
    main_page(),
    main_page(),
  ];
  List<Widget> tags = [];

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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => navigation[index]));
              },
            ),
          );
        },
      ),
    );
  }
}
