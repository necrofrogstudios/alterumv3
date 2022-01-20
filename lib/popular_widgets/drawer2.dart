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
  final List<String> items = [
    'Profile',
    'Roleplays',
    'Characters',
    'Messages',
    'Settings',
  ];
  final List<Widget> navigation = [
    profile(),
    main_page(),
    my_characters(),
    messages_main(),
    settings(),
  ];
  drawer2(this.back);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    //backgroundColor: theme.backgroundColor;//
    List<Widget> drawerButtons = [];
    for (int i = 0; i < items.length; i++) {
      drawerButtons.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigation[i]),
            );
          },
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 50, 0),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: theme.splashColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 14, 54, 0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.accentColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 14, 60, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items[i],
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
    return Drawer(
      child: Container(
        color: theme.backgroundColor,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(color: theme.splashColor, shape: BoxShape.circle),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 12, 0, 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color: theme.accentColor, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  drawer_flip_card(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Guarded',
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                      Text(
                        'Standard User',
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                      Text(
                        'Points: 3125',
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                      Text(
                        'Pearls: 3',
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ...drawerButtons,
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 50, 0),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: theme.splashColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 54, 0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: theme.accentColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 14, 60, 0),
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
    return FlipCard(
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
            height: 150,
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
            height: 150,
            width: 150,
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
    );
  }
}
