import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/main_page/marquee.dart';
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
                child: marquee(),
              ),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'RP NAME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    Image.network('https://www.facebook.com/1768195266632020/photos/a.1769933656458181/3221950687923130/?type=3&eid=ARB9YVaTzR_hmTNC_hMoB6H-dtgRWXNM4cP5lhgVq3KYA9suw-TCtkKlINBldu0AxhDWR7hA10Y-mrNI&__xts__%5B0%5D=68.ARDLd9LwLEixxRGe-cSAdeAAFUYPW37DcYqXB3Vt0wPlTX4J8YQOpSjI3stXs80d1r72Z03ic5aQoLo4pzqlKzr3bH44OimMRKzek4fpkkSGhehcDLd9_4bAubgC7eebCdm3-cNja8O1cioLcKjODwQ8Lpq9zSiftVKL0KhgP0o77Fx7EiHdw--k0R8cBxVdCTdPJqpkmRUdpAHn0d3vJssbl-0mZEnJf3JCDLFL4axjQB8VcG3SxpU0lpS0ug_tJZJ9zyRuwsbWpYO-k6ULHIiC8fiTO3tvAlXu1uHEI4Qi1CJglOkZEOM&__tn__=EEHH-R'),
                    Text(
                      'admins, favorites,current amount of rpers, latest active, tags',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: theme.primaryColor,
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
                      'button to rules? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
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
