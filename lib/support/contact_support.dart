import 'package:flutter/material.dart';
import 'package:testing/profile/profile.dart';
import 'package:testing/sign_in/sign_up.dart';
import 'package:testing/sign_in/sign_in.dart';
import 'package:testing/sign_in/sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class contact_support extends StatefulWidget {
  final back;
  contact_support(this.back);
  @override
  contact_supportState createState() => contact_supportState(back);
}

class contact_supportState extends State<contact_support> {
  final back;
  contact_supportState(this.back);
  bool value = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: 500,
        width: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://thumbs.dreamstime.com/z/abstract-geometric-background-modern-marble-mosaic-inlay-blue-gold-triangles-black-white-stone-textures-fashion-marbling-abstract-196404787.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: theme.primaryColor, size: 30),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => back()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  color: theme.accentColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.splashColor, width: 4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Support',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: theme.primaryColor,
                              fontSize: 50,
                            ),
                          ),
                        ),
                        input_title(),
                        input_complaint(),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            submit(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class input_title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: theme.primaryColor),
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            hintText: 'Subject Matter',
            hintStyle: TextStyle(
              color: theme.primaryColor.withOpacity(0.55),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class input_complaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxLines = 12;
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: theme.primaryColor),
          keyboardType: TextInputType.multiline,
          maxLines: maxLines,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            hintText: 'Complaint',
            hintStyle: TextStyle(
              color: theme.primaryColor.withOpacity(0.55),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 4.0, color: theme.splashColor),
          elevation: 6,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          backgroundColor: theme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 15, color: theme.primaryColor),
        ),
        onPressed: () {},
      ),
    );
  }
}
