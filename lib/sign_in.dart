import 'package:flutter/material.dart';
import 'package:testing/profile/profile.dart';

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: Container(
          height: 40,
          color: theme.backgroundColor,
        ),
      ),
      body: Container(
        color: theme.backgroundColor,
        height: 500,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://wallpaperaccess.com/full/1465993.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null /* add child content here */,
            ),
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(color: theme.primaryColor, fontSize: 20),
            ),
            Image.network("https://cdn.iconscout.com/icon/free/png-256/theater-mask-33-1184374.png"),
            OutlineButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
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
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
