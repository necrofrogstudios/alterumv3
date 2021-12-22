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
import 'package:testing/main_page/roleplay_list_layout.dart';

class roleplay_masterlist extends StatelessWidget {
  final currentScreen = roleplay_masterlist;
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
                child: admin_marquee(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.backgroundColor,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(100, (index) {
                    return Center(
                      child: Text(
                        'Item $index',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    );
                  }),
                ),
              ),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Park Jimin',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/R.d15c046ebdaabab3c0bb7174dfe04b9e?rik=SQ4oPC0qaAWNow&pid=ImgRaw&r=0"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Kim Jaejoong',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.Fpxai0ib6grULdkAVVkD-QHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'John Cena',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.zwI_5szHy5ChTmwJhgzIaAHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Tyler Blackburn',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.e32kH9Lro6MOvhZW_NiiogHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Calliope Mori',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/R.1daa4f1db1545cc864e8733273834ed3?rik=4RIbD%2bf0MyHAdg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LqRvElpvWqM%2fUCH-NbQtGFI%2fAAAAAAAAGBI%2f-UpYJoCU6L0%2fs1600%2flee-taemin-lee-taemin-23578754-888-789.jpg&ehk=A%2brUdHBOGXIHbHyaCMLTzXjWiwpRBFykrSGYx8WLHAc%3d&risl=&pid=ImgRaw&r=0"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Lee Taemin',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.zwI_5szHy5ChTmwJhgzIaAHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Tyler Blackburn',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/OIP.e32kH9Lro6MOvhZW_NiiogHaHa?pid=ImgDet&rs=1"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Calliope Mori',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Card(
                            color: theme.backgroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: theme.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://th.bing.com/th/id/R.1daa4f1db1545cc864e8733273834ed3?rik=4RIbD%2bf0MyHAdg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LqRvElpvWqM%2fUCH-NbQtGFI%2fAAAAAAAAGBI%2f-UpYJoCU6L0%2fs1600%2flee-taemin-lee-taemin-23578754-888-789.jpg&ehk=A%2brUdHBOGXIHbHyaCMLTzXjWiwpRBFykrSGYx8WLHAc%3d&risl=&pid=ImgRaw&r=0"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Lee Taemin',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: roleplay_request(),
                    ),
                  ],
                ),
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
