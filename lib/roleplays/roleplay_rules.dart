import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/tag_buttons.dart';
import 'package:testing/roleplays/admin_marquee.dart';
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
                child: admin_marquee(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Haunted Hotel of Jefferson',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    Image.network('https://centerforparentingeducation.org/wp-content/uploads/2014/04/rules.png'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        'follow these rules',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                    Text(
                      'Rules',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'Favorite the rp '
                      ' \n be kind '
                      ' \n please rewind '
                      ' \n inactivity set to 7 days',
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
                            MaterialPageRoute(builder: (context) => roleplay_main()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Request Form',
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
      ),
    );
  }
}
/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
