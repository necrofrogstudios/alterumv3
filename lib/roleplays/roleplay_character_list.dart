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
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
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
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                          ' Park Jimin',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: theme.primaryColor, fontSize: 15),
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
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      'activity points',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      'another thing',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    child: FlatButton(
                      color: theme.backgroundColor,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      child: 
                    
                  ),
                ],
              ),
            ),
          ),
        ), //cherry blossoms vvv//
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Container(
            decoration: BoxDecoration(
              color: theme.accentColor,
              border: Border.all(color: theme.splashColor, width: 3.0),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ), //name, creator, tags, intro
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://149369349.v2.pressablecdn.com/wp-content/uploads/2013/01/Mar-cover-photo-3769.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    'cherry bolossom studios~ love for everyone~',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Creators: Guarded, basketcase101, frog',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Tags: action, adventure, first pov, active',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'With 791808 posts, 67 votes, 164 favorites, 26840 views, 411 comments',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Active 56 seconds ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Container(
            decoration: BoxDecoration(
              color: theme.accentColor,
              border: Border.all(color: theme.splashColor, width: 3.0),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ), //name, creator, tags, intro
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://traveloffice.org/wp-content/uploads/2018/09/fall-leaves-tree.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    'OWL CITY || First & Third POV || All Orientations Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Creators: Guarded, basketcase101, MrCarrot',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Tags: action, adventure, first pov, active',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'With 791808 posts, 67 votes, 164 favorites, 26840 views, 411 comments',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Active 3 minutes ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                ),
              ],
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
