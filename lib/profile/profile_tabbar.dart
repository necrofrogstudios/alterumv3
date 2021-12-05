import 'package:flutter/material.dart';

class profile_tabbar extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 600,
      color: theme.backgroundColor,
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
              height: 550, //height of TabBarView
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

class wall_tab extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: TextFormField(
                style: TextStyle(color: theme.primaryColor),
                //overflow bug if too much text is entered in this field
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: theme.accentColor, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: theme.accentColor, width: 3.0),
                  ),
                  hintText: 'Type a Message Here',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                ),
              ),
            ),
            Container(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 30, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 3.0, color: theme.accentColor),
                    elevation: 6,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                    backgroundColor: theme.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Post',
                    style: TextStyle(fontSize: 15, color: theme.primaryColor),
                  ),
                  onPressed: () {},
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class profile_tab extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
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
