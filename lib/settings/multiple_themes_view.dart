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

    Color myColor = Theme.of(context).accentColor;

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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 400,
                      child: MultipleThemesView(),
                    ),
                  ),
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
                      child: Text('Custom theme'))
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

class MultipleThemesView extends StatefulWidget {
  MultipleThemesView({Key key}) : super(key: key);

  @override
  State<MultipleThemesView> createState() => _MultipleThemesViewState();
}

class _MultipleThemesViewState extends State<MultipleThemesView> {
  final currentScreen = MultipleThemesView;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: model.themes
                      .map(
                        (themeData) => GestureDetector(
                          onTap: () {
                            getThemeManager(context).selectThemeAtIndex(themeData.index);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: getThemes[themeData.index].splashColor,
                                        border: Border.all(
                                          color: getThemes[themeData.index].splashColor,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50))),
                                    width: 50,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                            ),
                                            color: getThemes[themeData.index].accentColor,
                                          ),
                                        ),
                                        Container(
                                          width: 20,
                                          height: 40,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(100),
                                              bottomRight: Radius.circular(100),
                                            ),
                                            color: getThemes[themeData.index].backgroundColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(17, 4, 0, 0),
                                    child: Text(
                                      'T',
                                      style: TextStyle(color: getThemes[themeData.index].primaryColor, fontSize: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }
}
