import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/main_page/marquee.dart';

class marquee extends StatelessWidget {
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
      backgroundColor: myColor,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: SimpleAccountMenu(
            icons: [
              Icon(Icons.person),
              Icon(Icons.email),
              Icon(Icons.group),
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
