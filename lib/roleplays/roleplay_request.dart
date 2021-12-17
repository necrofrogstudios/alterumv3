import 'package:flutter/material.dart';

class roleplay_request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 0),
                      child: FlatButton(
                        color: theme.accentColor,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        height: 60.0,
                        onPressed: () {
                          
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Request Form',
                              style: TextStyle(
                                fontSize: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),;
  }
}
