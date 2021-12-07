import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/drawer.dart';

import 'package:testing/settings/multiple_themes_viewmodel.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';

class MultipleThemesViews extends StatelessWidget {
  MultipleThemesViews({Key key}) : super(key: key);
  final currentScreen = MultipleThemesViews;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: theme.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: theme.primaryColor),
          backgroundColor: theme.accentColor,
          title: Text(
            'Next page',
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
      ),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }
}

class MultipleThemesView extends StatelessWidget {
  MultipleThemesView({Key key}) : super(key: key);
  final currentScreen = MultipleThemesView;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                Container(color: theme.splashColor, height: 4),
                themes(),
                Wrap(
                  spacing: 30,
                  runSpacing: 20,
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: model.themes
                      .map(
                        (themeData) => GestureDetector(
                          onTap: () {
                            getThemeManager(context).selectThemeAtIndex(themeData.index);
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: getThemes()[themeData.index].splashColor,
                                        border: Border.all(
                                          color: getThemes()[themeData.index].splashColor,
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
                                            color: getThemes()[themeData.index].accentColor,
                                          ),
                                        ),
                                        Container(
                                          width: 20,
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(100),
                                              bottomRight: Radius.circular(100),
                                            ),
                                            color: getThemes()[themeData.index].backgroundColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(17, 4, 0, 0),
                                    child: Text(
                                      'T',
                                      style: TextStyle(color: getThemes()[themeData.index].primaryColor, fontSize: 30),
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
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }
}

class themes extends StatelessWidget {
  const themes();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          
           content: Builder(
      builder: (context) {const Text('AlertDialog Title'),
        // Get available height and width of the build area of this widget. Make a choice depending on the size.                              
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;

        return Container(
          height: height - 400,
          width: width - 400,
        ),
      },
    ),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            MultipleThemesView(),
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
      ),
      child: const Text('Themes'),
    );
  }
}
