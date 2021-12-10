import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/drawer.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:testing/settings/multiple_themes_viewmodel.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';

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
              Container(color: theme.splashColor, height: 4),
              themes(),
            ],
          ),
        ),
      ),
    );
  }
}

class themes extends StatefulWidget {
  const themes();
  @override
  State<themes> createState() => _themesState();
}

class _themesState extends State<themes> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    void changeColor(Color color) {
      setState(() {
        getThemes[12] = getThemes[12].copyWith(accentColor: color);
        theme = getThemes[12];
        getThemeManager(context).selectThemeAtIndex(12);
      });
    }

    void changeColor(Color color) {
      setState(() {
        getThemes[12] = getThemes[12].copyWith(backgroundColor: color);
        theme = getThemes[12];
        getThemeManager(context).selectThemeAtIndex(12);
      });
    }

    return OutlinedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: theme.backgroundColor,
          title: Text(
            'Themes',
            style: TextStyle(color: theme.primaryColor),
          ),
          content: Text(
            'Pick a Theme',
            style: TextStyle(color: theme.primaryColor),
          ),
          actions: <Widget>[
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Pick a color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor,
                            pickerColor: theme.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                    child: Text('Custom theme'),
                  ),
                  OutlinedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Pick a color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor,
                            pickerColor: theme.accentColor,
                          ),
                        ),
                      ),
                    ),
                    child: Text('Custom theme'),
                  ),
                  OutlinedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Pick a color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor,
                            pickerColor: theme.splashColor,
                          ),
                        ),
                      ),
                    ),
                    child: Text('Custom theme'),
                  ),
                  OutlinedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Pick a color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor,
                            pickerColor: theme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    child: Text('Custom theme'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: const Text(
          'Themes',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
