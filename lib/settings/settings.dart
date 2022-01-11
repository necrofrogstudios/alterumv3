import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:testing/settings/themes_model.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/settings/themes_navigation.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
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
