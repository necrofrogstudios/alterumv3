import 'package:flutter/material.dart';
import 'package:testing/profile/profile.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class sign_up extends StatefulWidget {
  @override
  sign_upState createState() => sign_upState();
}

class sign_upState extends State<sign_up> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: 800,
        width: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://64.media.tumblr.com/9b7ac6e7d24cf994c538d166ff330f53/e05d144f651b2db4-a6/s400x600/50ed90a10be694dfd4203ec45627f5c1f355c69e.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                child: Text(
                  'Alterum',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Image.network("https://icons.iconarchive.com/icons/icons8/windows-8/512/Cinema-Theatre-Masks-icon.png"),
              ),
              input_username(),
              input_email(),
              input_password(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: this.value,
                      onChanged: (bool value) {
                        setState(() {
                          this.value = value;
                        });
                      },
                      activeColor: Colors.yellow,
                      checkColor: Colors.black,
                      side: BorderSide(
                        color: Colors.yellow,
                        width: 1.5,
                      ),
                    ),
                    Text(
                      'Remember Me',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sign_up_button(),
                  sign_in_button(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class input_username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            hintText: 'Username',
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.75),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class input_email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.75),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class input_password extends StatefulWidget {
  @override
  input_passwordState createState() => input_passwordState();
}

class verify_password extends StatefulWidget {
  @override
  input_passwordState createState() => input_passwordState();
}

class input_passwordState extends State<input_password> {
  var _passwordVisible = false;
  TextEditingController _userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextFormField(
          keyboardType: TextInputType.text,
          controller: _userPasswordController,
          obscureText: !_passwordVisible,
          style: TextStyle(color: Colors.black),
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.yellow, width: 4.0),
            ),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.75),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          ),
        ),
      ),
    );
  }
}

class sign_up_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 4.0, color: Colors.yellow),
          elevation: 6,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          backgroundColor: theme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(fontSize: 15, color: theme.primaryColor),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile()),
          );
        },
      ),
    );
  }
}

class sign_in_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 4.0, color: Colors.yellow),
          elevation: 6,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          backgroundColor: theme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Sign In',
          style: TextStyle(fontSize: 15, color: theme.primaryColor),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile()),
          );
        },
      ),
    );
  }
}
