import 'package:flutter/material.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:testing/settings/themes_model.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/settings/themes.dart';

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
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            color: theme.accentColor,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
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
        ),
      ),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }
}
