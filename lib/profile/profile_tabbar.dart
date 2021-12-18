import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testing/profile/tabbar_wall.dart';

class profile_tabbar extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class profile_tab extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        children: <Widget>[
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
      ),
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
