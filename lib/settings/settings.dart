import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:testing/settings/themes_model.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/settings/themes_navigation.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';

class settings extends StatefulWidget {
  settings({Key key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final currentScreen = settings;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primaryColor),
        backgroundColor: theme.accentColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: theme.primaryColor,
            fontSize: 30,
          ),
        ),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              profile_top_buttons(),
              Container(color: theme.splashColor, height: 4),
              themes_navigation(),
            ],
          ),
        ),
      ),
    );
  }
}
