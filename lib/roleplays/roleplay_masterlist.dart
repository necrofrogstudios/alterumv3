import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/roleplay_request.dart';
import 'package:testing/roleplays/admin_marquee.dart';
import 'package:testing/roleplays/roleplay_request.dart';
import 'package:testing/roleplays/roleplay_character_list.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

class roleplay_masterlist extends StatelessWidget {
  final currentScreen = roleplay_masterlist;
  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 1;
    double cardHeight = MediaQuery.of(context).size.height / 1;
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
                child: admin_marquee(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  children: [
                    Text(
                      'MASTERLIST',
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    GridView.count(
                      childAspectRatio: cardWidth / cardHeight,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 3,
                      children: <Widget>[
                        character_parkjimin(),
                        character_kimjaejoong(),
                        character_johncena(),
                        character_tylerblackburn(),
                        character_calliopemori(),
                        character_leetaemin(),
                        character_parkjimin(),
                        character_johncena(),
                        character_bangyongguk(),
                        character_chengjunya(),
                        character_parkchanyeol(),
                        character_parkjimin(),
                        character_kimjaejoong(),
                        character_johncena(),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: theme.backgroundColor,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: roleplay_request(),
                ),
              ),
              Container(
                color: theme.backgroundColor,
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
