import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class character_parkjimin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.splashColor, width: 4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: FittedBox(
          child: Image.network('https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'),
        ),
      ),
    );
  }
}

class character_kimjaejoong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: theme.accentColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ), //name, creator, tags, intro
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network('https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: 0.2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.accentColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                ' Park Jimin',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: theme.primaryColor, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), //back of card  V V V V //
          back: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Container(
              decoration: BoxDecoration(
                color: theme.accentColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      ' Park Jimin',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'activity p',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'another',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class character_johncena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 80,
          decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://th.bing.com/th/id/OIP.Fpxai0ib6grULdkAVVkD-QHaHa?pid=ImgDet&rs=1"),
            ),
          ),
        ),
        Text(
          'John Cena',
          style: TextStyle(
            color: theme.primaryColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class character_tylerblackburn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/OIP.zwI_5szHy5ChTmwJhgzIaAHaHa?pid=ImgDet&rs=1"),
              ),
            ),
          ),
          Text(
            'Tyler Blackburn',
            style: TextStyle(
              color: theme.primaryColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class character_calliopemori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/OIP.e32kH9Lro6MOvhZW_NiiogHaHa?pid=ImgDet&rs=1"),
              ),
            ),
          ),
          Text(
            'Calliope Mori',
            style: TextStyle(
              color: theme.primaryColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class character_leetaemin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/R.1daa4f1db1545cc864e8733273834ed3?rik=4RIbD%2bf0MyHAdg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LqRvElpvWqM%2fUCH-NbQtGFI%2fAAAAAAAAGBI%2f-UpYJoCU6L0%2fs1600%2flee-taemin-lee-taemin-23578754-888-789.jpg&ehk=A%2brUdHBOGXIHbHyaCMLTzXjWiwpRBFykrSGYx8WLHAc%3d&risl=&pid=ImgRaw&r=0"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Lee Taemin',
              style: TextStyle(
                color: theme.primaryColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class character_bangyongguk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/OIP.zwI_5szHy5ChTmwJhgzIaAHaHa?pid=ImgDet&rs=1"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Tyler Blackburn',
              style: TextStyle(
                color: theme.primaryColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class character_chengjunya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/OIP.e32kH9Lro6MOvhZW_NiiogHaHa?pid=ImgDet&rs=1"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Calliope Mori',
              style: TextStyle(
                color: theme.primaryColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class character_parkchanyeol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://th.bing.com/th/id/R.1daa4f1db1545cc864e8733273834ed3?rik=4RIbD%2bf0MyHAdg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LqRvElpvWqM%2fUCH-NbQtGFI%2fAAAAAAAAGBI%2f-UpYJoCU6L0%2fs1600%2flee-taemin-lee-taemin-23578754-888-789.jpg&ehk=A%2brUdHBOGXIHbHyaCMLTzXjWiwpRBFykrSGYx8WLHAc%3d&risl=&pid=ImgRaw&r=0"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Lee Taemin',
              style: TextStyle(
                color: theme.primaryColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
