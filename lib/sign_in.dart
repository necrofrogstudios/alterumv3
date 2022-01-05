import 'package:flutter/material.dart';

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.backgroundColor,
        height: 500,
        child: Column(
          children: <Widget>[
            Text(
              'Sign In',
              style: TextStyle(color: theme.primaryColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
