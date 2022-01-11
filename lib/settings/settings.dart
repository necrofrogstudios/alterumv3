import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:testing/settings/themes_model.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/settings/themes_navigation.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/main_page/marquee.dart';
import 'package:testing/messages/messages_main.dart';
import 'package:testing/main_page/main_page.dart';

class settings extends StatefulWidget {
  settings({Key key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final currentScreen = settings;
  final List<Widget> navigation = [
    main_page(),
    messages_main(),
    main_page(),
    messages_main(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(color: theme.primaryColor),
        backgroundColor: theme.accentColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: theme.primaryColor,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: SimpleAccountMenu(
              icons: [
                Icon(Icons.menu_book),
                Icon(
                  Icons.email,
                ),
                Icon(Icons.group),
                Icon(Icons.person_add),
              ],
              iconColor: theme.primaryColor,
              onChange: (index) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => navigation[index]));
              },
            ),
          ),
        ],
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(color: theme.splashColor, height: 4),
              profile_top_buttons(),
              Container(color: theme.splashColor, height: 2),
              themes_navigation(),
            ],
          ),
        ),
      ),
    );
  }
}
