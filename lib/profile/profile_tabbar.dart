import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testing/profile/tabbar_wall.dart';

class profile_tabbar extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.backgroundColor,
      width: double.infinity,
      child: DefaultTabController(
        length: 3, // length of tabs
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 50,
              color: theme.backgroundColor,
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: theme.splashColor),
                ),
                labelColor: theme.primaryColor,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Text('Wall', style: TextStyle(fontSize: 16, color: theme.primaryColor)),
                  Text('Profile', style: TextStyle(fontSize: 16, color: theme.primaryColor)),
                  Text('Roleplays', style: TextStyle(fontSize: 16, color: theme.primaryColor)),
                ],
              ),
            ),
            Container(
               //height of TabBarView
              child: TabBarView(
                children: <Widget>[
                  wall_tab(),
                  profile_tab(),
                  roleplays_tab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class profile_tab extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
            child: Text(
              'About Me',
              style: TextStyle(fontSize: 20, color: theme.primaryColor),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Text(
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go '
              'oh look! its new sample text wow omg much wow who does this '
              'why bother with your own text for it to be destroyed later '
              'well ya know- gotta put in the admin work and make it work '
              'apps dont grow on trees and we are above using basic bitch '
              'filler text yeah that looks good enough good job me yay go ',
              style: TextStyle(fontSize: 15, color: theme.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}

class roleplays_tab extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Text(
          'About Me',
          style: TextStyle(fontSize: 25, color: theme.primaryColor),
        ),
      ),
    );
  }
}
