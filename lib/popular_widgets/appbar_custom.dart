import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/main_page/marquee.dart';

class appbar_custom extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return AppBar(
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
              Icon(MaterialIcons.menu_book),
              Icon(Icons.group),
              Icon(Icons.email),
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
