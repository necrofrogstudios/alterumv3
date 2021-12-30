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
                  image: NetworkImage("https://64.media.tumblr.com/f86ecff1d27a1dac6dddd7b508e2c3b4/f0a5ab12d64fb419-55/s640x960/acc14da759877dbe17b8bbb425251aade41b37a1.jpg"),
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
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27.0),
                child: Image.network('https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg'),
              ),
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
