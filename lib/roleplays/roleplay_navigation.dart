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
    return ListView(
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
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded3() {
      return Padding(
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
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: ScrollOnExpand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expandable(
              collapsed: buildCollapsed3(),
              expanded: buildExpanded3(),
            ),
            Divider(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.green,
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
