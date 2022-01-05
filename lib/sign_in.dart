import 'package:flutter/material.dart';
import 'package:flutter/testing/profile/profile.dart';

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.backgroundColor,
        height: 500,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(color: theme.primaryColor, fontSize: 20),
            ),
            Container(height: 100, width: 100, color: theme.accentColor),
            FlatButton(
              color: theme.accentColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
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
