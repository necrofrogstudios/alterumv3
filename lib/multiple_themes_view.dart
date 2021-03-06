import 'package:flutter/material.dart';
import 'drawer.dart';
import 'multiple_themes_viewmodel.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';

class MultipleThemesView extends StatelessWidget {
  MultipleThemesView({Key key}) : super(key: key);
  final currentScreen = MultipleThemesView;

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
                Text(
                  'look here maybe idk',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
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
                                        color: Colors.yellow,
                                        border: Border.all(
                                          color: Colors.yellow,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50))),
                                    width: 95,
                                    height: 95,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 80,
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 80,
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(100),
                                              bottomRight: Radius.circular(100),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 32, 20, 0),
                                    child: Text(
                                      'text',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                themeData.title,
                                style: TextStyle(color: theme.primaryColor),
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
