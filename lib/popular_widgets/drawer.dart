import 'package:flutter/material.dart';
import 'package:testing/settings/settings.dart';
import 'package:testing/profile/profile.dart';
import 'package:testing/main_page/main_page.dart';

class drawer extends StatelessWidget {
  final back;

  drawer(this.back);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    //backgroundColor: theme.backgroundColor;//
    return Drawer(
      child: Container(
        color: theme.accentColor,
        child: ListView(
          children: <Widget>[
            FlatButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: myColor,
              height: 60.0,
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => back()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Back',
                    style: TextStyle(fontSize: 20, color: theme.primaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(color: theme.splashColor, height: 4),
            Container(
              height: 150,
              color: theme.backgroundColor,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: CircleAvatar(
                  radius: 220,
                  backgroundImage: NetworkImage('https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg'),
                ),
              ),
            ),
            Container(
              color: theme.backgroundColor,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Guarded',
                        style: TextStyle(fontSize: 25, color: theme.primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(color: theme.splashColor, height: 4),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => main_page()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Characters',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
