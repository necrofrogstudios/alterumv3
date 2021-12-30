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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27.0),
                child: Image.network('https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg'),
              ),
            ),
            Container(height: 4, color: theme.splashColor),
            Container(height: 210, color: theme.backgroundColor),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage('https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg'),
            ),
          ),
        ),
        Center(
            child: Padding(
          padding: EdgeInsets.fromLTRB(0, 285, 0, 0),
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
