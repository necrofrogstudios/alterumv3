import 'package:flutter/material.dart';

import 'drawer.dart';
import 'profile/profile_dropdown_button.dart';
import 'profile/profile_pics_icons.dart';
import 'profile/profile_tabbar.dart';
import 'profile/profile_top_buttons.dart';

class profile extends StatelessWidget {
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
          SimpleAccountMenu(
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
              Container(color: theme.splashColor, height: 3),
              profile_top_buttons(),
              profile_pics_icons(),
              Container(color: theme.splashColor, height: 4),
              profile_tabbar(),
              Container(color: theme.splashColor, height: 3),
              Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\u00a9 2022 Alterum',
                      style: TextStyle(
                        color: Colors.grey,
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
/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
