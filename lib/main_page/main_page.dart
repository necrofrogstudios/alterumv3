import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class main_page extends StatelessWidget {
  final currentScreen = profile;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primaryColor),
        centerTitle: true,
        title: FlatButton(
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
                Icon(Icons.settings),
                Icon(Icons.credit_card),
              ],
              iconColor: theme.primaryColor,
              onChange: (index) {
                print(index);
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
              Container(color: theme.splashColor, height: 4),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.accentColors,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\u00a9 2022 Alterum',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 15,
                      ),
                    ),
                    FlatButton(
                      child: Text('Contact Support'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
