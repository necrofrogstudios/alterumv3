import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/roleplay_request.dart';
import 'package:testing/roleplays/admin_marquee.dart';
import 'package:testing/roleplays/roleplay_character.dart';
import 'package:testing/roleplays/roleplay_navigation.dart';
import 'package:testing/roleplays/roleplay_character_list.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

class roleplay_masterlist extends StatelessWidget {
  final currentScreen = roleplay_masterlist;
  const roleplay_masterlist();
  List<String> masterlist_name = [
    'Park Jimin'
  ];
  List<String> masterlist_image = [
    'https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'
  ];
  List<String> masterlist_points = [
    '100'
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> masterlist_characters = [];
    for (int i = 0; i < masterlist_name.length; i++) {
      masterlist_characters.add(masterlist_flipcard(masterlist_name[i], masterlist_image[i], masterlist_points[i]));
    }

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
              Container(color: theme.splashColor, height: 2),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  children: [
                    roleplay_navigation(),
                    Text(
                      'MASTERLIST',
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    GridView.count(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5,
                      children: <Widget>[
                        ...masterlist_characters,
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
