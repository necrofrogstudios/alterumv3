import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/roleplays/roleplay_navigation.dart';
import 'package:testing/roleplays/character_profile.dart';

class roleplay_character extends StatefulWidget {
  @override
  roleplay_characterState createState() => roleplay_characterState();
}

class roleplay_characterState extends State<roleplay_character> {
  final currentScreen = roleplay_character;
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
            Container(color: theme.splashColor, height: 2),
            roleplay_navigation(),
            Text(
              'Park Jimin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: theme.primaryColor,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: theme.splashColor, width: 4),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: FittedBox(
                  child: Image.network('https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.add_alert, color: theme.primaryColor),
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.email, color: theme.primaryColor),
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.report_problem, color: theme.primaryColor),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 3, 10, 5),
              child: character_profile(),
            ),
            Container(height: 400, color: theme.backgroundColor),
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
