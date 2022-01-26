import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class messages_open extends StatefulWidget {
  @override
  messages_openState createState() => messages_openState();
}

class messages_openState extends State<messages_open> {
  final currentScreen = messages_open;
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Guarded',
                    style: TextStyle(
                      fontSize: 30,
                      color: theme.primaryColor,
                    ),
                  ),
                ),
                partner_messages(),
                my_messages(),
                partner_messages(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Container(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Scaffold(
        body: Container(
          height: 70,
          color: theme.accentColor,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: theme.splashColor, width: 4.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: theme.splashColor, width: 4.0),
                      ),
                      hintText: 'Type Message Here',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.55),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                    ),
                  ),
                ),
                Icon(
                  Icons.send,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class partner_messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              color: theme.splashColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 4, 4, 4),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.accentColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                        child: Container(
                          child: SelectableText(
                            'basketcase101',
                            style: TextStyle(
                              fontSize: 20,
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 3),
                        child: Container(
                          child: SelectableText(
                            '01/25/2022 - 12:40 AM',
                            style: TextStyle(
                              fontSize: 15,
                              color: theme.primaryColor.withOpacity(0.45),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Container(
                          child: SelectableText(
                            'blep blep blep blep blep blep blep blep blep blep blep blep blep blep',
                            style: TextStyle(
                              fontSize: 15,
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class my_messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              color: theme.splashColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(4, 4, 0, 4),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.accentColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    topLeft: Radius.circular(35.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                        child: Container(
                          child: SelectableText(
                            'Guarded',
                            style: TextStyle(
                              fontSize: 20,
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 3),
                        child: Container(
                          child: SelectableText(
                            '01/25/2022 - 12:40 AM',
                            style: TextStyle(
                              fontSize: 15,
                              color: theme.primaryColor.withOpacity(0.45),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                        child: Container(
                          child: SelectableText(
                            'blep blep blep blep blep blep blep blep blep blep blep blep blep blep',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 15,
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
