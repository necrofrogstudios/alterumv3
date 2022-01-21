import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/admin_marquee.dart';
import 'package:testing/roleplays/roleplay_rules.dart';
import 'package:testing/roleplays/roleplay_navigation.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class roleplay_main extends StatefulWidget {
  @override
  roleplay_mainState createState() => roleplay_mainState();
}

class roleplay_mainState extends State<roleplay_main> {
  final currentScreen = roleplay_main;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "blep",
  ];

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

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
      body: SmartRefresher(
        enablePullDown: true,
        header: WaterDropMaterialHeader(backgroundColor: theme.splashColor, color: theme.primaryColor),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {},
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Container(color: theme.splashColor, height: 4),
            Container(
              color: theme.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  roleplay_navigation(),
                  Text(
                    'The Haunted Hotel of Jefferson',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://sportshub.cbsistatic.com/i/r/2018/09/05/da806911-77eb-42d0-896c-0ce1495392ef/thumbnail/1200x675/1c8b00bf06837191aa6a350fa2389a2b/hauntedhotel-cover.png"), fit: BoxFit.cover),
                        color: theme.backgroundColor,
                        border: Border.all(color: theme.splashColor, width: 3.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      'admins, favorites,current amount of rpers, latest active',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: theme.primaryColor,
                      ),
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
                    'A hotel where your nightmares come to life '
                    ' enter a world where the dead walk and the life before your eyes is '
                    'not quite what you\'ve ever seen. Walk carefully down the halls, '
                    'Speak respectfully to the supernatural less you become one yourself',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 0),
                    child: FlatButton(
                      color: theme.accentColor,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      height: 60.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => roleplay_rules()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rules',
                            style: TextStyle(
                              fontSize: 30,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
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
    );
  }
}

/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
