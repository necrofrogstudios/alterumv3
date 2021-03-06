import 'package:flutter/material.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class ExamplePage extends StatefulWidget {
  @override
  ExamplePageState createState() => ExamplePageState();
}

class ExamplePageState extends State<ExamplePage> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "assets/welcome0.png",
    "assets/welcome1.png",
  ];
  final currentScreen = ExamplePage;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "Messages",
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
    CardController controller;
    var theme = Theme.of(context);

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
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Container(
              color: theme.splashColor,
              height: 4,
            ),
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
