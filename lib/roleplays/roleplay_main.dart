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
import 'package:testing/roleplays/roleplay_rules.dart';
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
                    Image.network('https://sportshub.cbsistatic.com/i/r/2018/09/05/da806911-77eb-42d0-896c-0ce1495392ef/thumbnail/1200x675/1c8b00bf06837191aa6a350fa2389a2b/hauntedhotel-cover.png'),
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
      ),
    );
  }
}
/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
