import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class messages_main extends StatefulWidget {
  @override
  messages_mainState createState() => messages_mainState();
}

class messages_mainState extends State<messages_main> {
  final currentScreen = messages_main;
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
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 30,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: theme.splashColor,
                            width: 4.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                        color: theme.accentColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                          child: Text(
                                            'Guarded',
                                            style: TextStyle(color: theme.primaryColor, fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                                          child: Text(
                                            'blep',
                                            style: TextStyle(fontSize: 15, color: theme.primaryColor.withOpacity(0.45)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: IconButton(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    iconSize: 15,
                                    icon: Icon(Icons.close, color: theme.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  background_test(),
                  Container(
                    height: MediaQuery.of(context).size.height / 1,
                  )
                ],
              ),
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}

class background_test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: theme.splashColor,
              width: 4.0,
            ),
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          color: theme.backgroundColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                            child: Text(
                              'Guarded',
                              style: TextStyle(color: theme.primaryColor, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                            child: Text(
                              'blep',
                              style: TextStyle(fontSize: 15, color: theme.primaryColor.withOpacity(0.45)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      iconSize: 15,
                      icon: Icon(Icons.close, color: theme.primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
