import 'package:flutter/material.dart';

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
            Container(height: 210, color: theme.backgroundColor),
          ],
        ),
        Center(
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
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network('https://simg.nicepng.com/png/small/8-87422_alien-comments-alien-avatar-red.png'),
              ),
            ),
          ),
        ),
        Center(
            child: Padding(
          padding: EdgeInsets.fromLTRB(0, 290, 0, 0),
          child: Text('Guarded', style: TextStyle(fontSize: 35, color: theme.primaryColor)),
        )),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 340, 0, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.person_add,
              size: 30,
              color: theme.primaryColor,
            ),
            Icon(
              Icons.email,
              size: 30,
              color: theme.primaryColor,
            ),
            Icon(
              Icons.group_add,
              size: 37,
              color: theme.primaryColor,
            )
          ]),
        )
      ],
    );
  }
}
