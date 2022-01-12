import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:testing/main.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/main_page/marquee.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';
import 'package:testing/main_page/slideshow.dart';

class profile extends StatefulWidget {
  final currentScreen = profile;
  ScrollController controller = ScrollController();
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  final currentScreen = profile;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "Popular",
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
          controller: controller,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            profile_pics_icons(),
            Container(color: theme.splashColor, height: 4),
            NotificationListener<OverscrollNotification>(
              onNotification: (OverscrollNotification value) {
                if (value.overscroll < 0 && controller.offset + value.overscroll <= 0) {
                  if (controller.offset != 0) controller.jumpTo(0);
                  return true;
                }
                if (controller.offset + value.overscroll >= controller.position.maxScrollExtent) {
                  if (controller.offset != controller.position.maxScrollExtent) {
                    controller.jumpTo(controller.position.maxScrollExtent);
                  }
                  return true;
                }
                controller.jumpTo(controller.offset + value.overscroll);
                return true;
              },
              child: profile_tabbar(),
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

/*

Text(
                      items[0],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    
                    */
