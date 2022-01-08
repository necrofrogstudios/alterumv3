import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/main_page/marquee.dart';
import 'package:testing/messages/messages_main.dart';

class appbar_custom extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return AppBar(
      bottomOpacity: 0.0,
      elevation: 0.0,
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
      backgroundColor: theme.accentColor,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: SimpleAccountMenu(
            icons: [
              Icon(Icons.menu_book),
              GestureDetector(
                // When the child is tapped, show a snackbar.
                onTap: () {},
                // The custom button
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text('My Button'),
                ),
              ),
              Icon(Icons.group),
              Icon(Icons.person_add),
            ],
            iconColor: theme.primaryColor,
            onChange: (index) {
              print(index);
            },
          ),
        ),
      ],
    );
  }
}
