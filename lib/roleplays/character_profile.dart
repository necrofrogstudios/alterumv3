import 'dart:math' as math;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:expandable/expandable.dart';
import 'package:testing/roleplays/roleplay_character.dart';
import 'package:testing/roleplays/roleplay_navigation_buttons.dart';
import 'package:testing/popular_widgets/roleplay_tag_buttons.dart';

import 'package:flutter/material.dart';

class character_profile extends StatefulWidget {
  @override
  State createState() {
    return character_profileState();
  }
}

class character_profileState extends State<character_profile> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        Card2(),
      ],
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              shape: BoxShape.rectangle,
            ),
          ));
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded3() {
      return Container(
        color: theme.accentColor,
        constraints: BoxConstraints(
          maxWidth: 2500.0,
          minWidth: 1450.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('bleh'),
              ),
            ],
          ),
        ),
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
      child: ScrollOnExpand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expandable(
              collapsed: buildCollapsed3(),
              expanded: buildExpanded3(),
            ),
            Container(color: theme.splashColor, height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: theme.backgroundColor,
                  height: 50,
                  width: 50,
                  child: Builder(
                    builder: (context) {
                      var controller = ExpandableController.of(context, required: true);
                      return IconButton(
                        icon: Container(
                          child: controller.expanded ? Icon(Icons.close) : Text('Profile'),
                        ),
                        onPressed: () {
                          controller.toggle();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
