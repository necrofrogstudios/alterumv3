import 'package:flutter/material.dart';
import 'multiple_themes_view.dart';
import 'profile.dart';

class drawer extends StatelessWidget {
  final back;

  drawer(this.back);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;
    //backgroundColor: theme.backgroundColor;//
    return Drawer(
      child: ListView(
        children: <Widget>[
          FlatButton(
            color: myColor,
            height: 60.0,
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => back()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Back',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            color: theme.backgroundColor,
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage('https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Guarded',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          FlatButton(
            height: 60.0,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            height: 60.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            height: 60.0,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            height: 60.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultipleThemesView()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
