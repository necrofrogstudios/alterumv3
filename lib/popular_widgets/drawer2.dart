import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/settings/settings.dart';
import 'package:testing/profile/profile.dart';
import 'package:testing/profile/profile_flip_card.dart';
import 'package:testing/main_page/main_page.dart';
import 'package:testing/characters/my_characters.dart';
import 'package:testing/sign_in/sign_in.dart';
import 'package:testing/messages/messages_main.dart';

class drawer2 extends StatelessWidget {
  final back;

  drawer2(this.back);

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
            drawer_flip_card(),
            Container(
              color: theme.backgroundColor,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5,
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
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 50, 10),
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 54, 10),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                    'Roleplays',
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
                  MaterialPageRoute(builder: (context) => my_characters()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Characters',
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
                    'Messages',
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
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              height: 60.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sign_in()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.logout,
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

class drawer_flip_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: theme.splashColor,
                    width: 4,
                  ),
                ),
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(27.0),
                  child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
                ),
              ),
            ),
          ), //back of card  V V V V //
          back: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.accentColor,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(
                    color: theme.splashColor,
                    width: 4,
                  ),
                ),
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.person_add,
                          size: 40,
                          color: theme.primaryColor,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.email,
                          ),
                          iconSize: 40,
                          color: theme.primaryColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => messages_main()),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.group_add,
                          size: 47,
                          color: theme.primaryColor,
                        ),
                        Icon(
                          Icons.block,
                          size: 40,
                          color: theme.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
