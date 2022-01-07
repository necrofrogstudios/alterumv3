import 'package:flutter/material.dart';
import 'package:testing/profile/profile_flip_card.dart';

class profile_pics_icons extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Container(height: 4, color: theme.splashColor),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://64.media.tumblr.com/b9f3b5df31b65cc7580d08ddcde8fafb/3a4adfd3477c1f35-f9/s540x810/fb288ef64720ee7b31f15542b1048d31865c7f81.jpg"),
                ),
              ),
            ),
            Container(height: 4, color: theme.splashColor),
            Container(height: 190, color: theme.backgroundColor),
          ],
        ),
        profile_flip_card(),
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 290, 0, 0),
            child: Column(
              children: [
                Text(
                  'Guarded',
                  style: TextStyle(fontSize: 40, color: theme.primaryColor),
                ),
                Text(
                  'Activity Points: 240',
                  style: TextStyle(fontSize: 15, color: theme.primaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
