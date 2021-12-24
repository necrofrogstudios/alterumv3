import 'dart:math' as math;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class roleplay_navigation extends StatefulWidget {
  @override
  State createState() {
    return roleplay_navigationState();
  }
}

class roleplay_navigationState extends State<roleplay_navigation> {
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
          maxWidth: 1500.0,
          minWidth: 450.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'yep',
                softWrap: true,
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
                          child: controller.expanded ? Icon(Icons.close) : Icon(FontAwesome5Solid.theater_masks),
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
