import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/solo/solo_navigation.dart';
import 'package:testing/solo/solo_create_character_input.dart';

class solo_create_character extends StatefulWidget {
  solo_create_character({Key key, this.title}) : super(key: key);

  final String title;

  @override
  solo_create_characterState createState() => solo_create_characterState();
}

class solo_create_characterState extends State<solo_create_character> {
  final currentScreen = solo_create_character;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Container(color: theme.splashColor, height: 4),
            Container(
              color: theme.backgroundColor,
              child: Column(
                children: [
                  solo_navigation(),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          children: <Widget>[
                            input_header(),
                            solo_create_character_input(),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 15, 20, 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(width: 4.0, color: theme.accentColor),
                                      elevation: 6,
                                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                                      backgroundColor: theme.backgroundColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    child: Text(
                                      'Post',
                                      style: TextStyle(fontSize: 15, color: theme.primaryColor),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
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
            footer(),
          ],
        ),
      ),
    );
  }
}
