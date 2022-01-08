import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';

class messages_main extends StatelessWidget {
  final currentScreen = messages_main;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        child: ListView(
          controller: controller,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Text(
              'bleh',
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}

/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
