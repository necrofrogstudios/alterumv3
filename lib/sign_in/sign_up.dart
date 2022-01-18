import 'package:flutter/material.dart';
import 'package:testing/profile/profile.dart';
import 'package:testing/sign_in/sign_in.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class sign_up extends StatefulWidget {
  @override
  sign_upState createState() => sign_upState();
}

class sign_upState extends State<sign_up> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            Image(
              image: AssetImage('images/masks.png'),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 0),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => sign_in()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                child: Image.network("https://icons.iconarchive.com/icons/icons8/windows-8/512/Cinema-Theatre-Masks-icon.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              ),
              input_username(),
              input_email(),
              input_password(),
              verify_password(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
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
                  register_button(),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.yellow, width: 4),
                      ),
                      child: Image.network("https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-clipart-flat-facebook-logo-png-icon-circle-22.png"),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.yellow, width: 4),
                      ),
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png"),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.yellow, width: 4),
                      ),
                      child: Image.network("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png"),
                    ),
                  ],
                ),
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
            contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class input_email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
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

class input_passwordState extends State<input_password> {
  var _passwordVisible = false;
  TextEditingController _userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
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
            contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class verify_password extends StatefulWidget {
  @override
  verify_passwordState createState() => verify_passwordState();
}

class verify_passwordState extends State<verify_password> {
  var _passwordVisible = false;
  TextEditingController _userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
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
            contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class register_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 4.0, color: Colors.yellow),
          elevation: 6,
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 17),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Register',
          style: TextStyle(fontSize: 15, color: Colors.white),
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
