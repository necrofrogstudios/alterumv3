import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:testing/messages/messages_main.dart';

class profile_flip_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: theme.splashColor,
                    width: 4,
                  ),
                ),
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26.0),
                  child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
                ),
              ),
            ),
          ), //back of card  V V V V //
          back: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
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
