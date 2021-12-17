import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/main_page/marquee.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

class roleplay_main extends StatelessWidget {
  final currentScreen = roleplay_main;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
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
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.accentColor,
                child: marquee(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'RP NAME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    Image.network('https://64.media.tumblr.com/ca1991687135006152a1dc5e01676211/9455c0401e14b342-9d/s540x810/f0ff7280db9153fa334f45d2fc4876a96ef8a95c.jpg'),
                    Text(
                      'admins, favorites,current amount of rpers, latest active, tags',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'About',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'button to rules? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: theme.backgroundColor,
                height: 200,
              ),
              Container(color: theme.splashColor, height: 4),
              footer(),
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
