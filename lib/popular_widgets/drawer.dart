import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/settings/settings.dart';
import 'package:testing/profile/profile.dart';
import 'package:testing/profile/profile_flip_card.dart';
import 'package:testing/main_page/main_page.dart';
import 'package:testing/characters/my_characters.dart';
import 'package:testing/sign_in/sign_in.dart';
import 'package:testing/messages/messages_main.dart';

class drawer extends StatelessWidget {
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
  drawer(this.back);

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
                padding: EdgeInsets.fromLTRB(0, 10, 50, 5),
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
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(380),
        bottomRight: Radius.circular(380),
      ),
      child: Drawer(
        child: Container(
          color: theme.backgroundColor,
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(color: theme.primaryColor, fontSize: 30),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => back()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                height: 48,
                                width: 254,
                                decoration: BoxDecoration(
                                  color: theme.splashColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40.0),
                                    topLeft: Radius.circular(40.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(4, 14, 0, 10),
                              child: Container(
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: theme.accentColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40.0),
                                    topLeft: Radius.circular(40.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 22, 0, 0),
                              child: Icon(
                                Icons.arrow_back,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 17, 0, 17),
                child: drawer_flip_card(),
              ),
              ...drawerButtons,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sign_in()),
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
            ],
          ),
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
