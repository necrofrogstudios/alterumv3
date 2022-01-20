import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:flip_card/flip_card.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/roleplay_request.dart';
import 'package:testing/roleplays/admin_marquee.dart';
import 'package:testing/roleplays/roleplay_character.dart';
import 'package:testing/roleplays/roleplay_navigation.dart';
import 'package:testing/roleplays/roleplay_character_list.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

class roleplay_masterlist extends StatelessWidget {
  final currentScreen = roleplay_masterlist;
  const roleplay_masterlist();

  final List<String> masterlist_name = const [
    'Park Jimin'
  ];
  final List<String> masterlist_image = const [
    'https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1'
  ];
  final List<String> masterlist_points = const [
    '100'
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(color: theme.splashColor, height: 4),
              profile_top_buttons(),
              Container(color: theme.splashColor, height: 4),
              Container(
                color: theme.accentColor,
                child: admin_marquee(),
              ),
              Container(color: theme.splashColor, height: 2),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  children: [
                    roleplay_navigation(),
                    Text(
                      'MASTERLIST',
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          // crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5,
                        ),
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(5),
                        //crossAxisSpacing: 5,
                        //mainAxisSpacing: 5,
                        //crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5,
                        itemCount: masterlist_name.length,
                        itemBuilder: (BuildContext ctx, index) {
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
                                      borderRadius: BorderRadius.circular(27.0),
                                      child: Image.network(masterlist_image[index]),
                                    ),
                                    Positioned.fill(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: FractionallySizedBox(
                                            widthFactor: 1,
                                            heightFactor: 0.2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: theme.accentColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(13),
                                                  bottomLeft: Radius.circular(13),
                                                ),
                                              ),
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  padding: const EdgeInsets.all(0),
                                                  primary: theme.primaryColor,
                                                  textStyle: const TextStyle(fontSize: 15),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => roleplay_character()),
                                                  );
                                                },
                                                child: Text(masterlist_name[index]),
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
                                        masterlist_name[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text(
                                        masterlist_points[index],
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
                          );
                        }
                        /*children: <Widget>[
                        character_parkjimin(),
                        character_kimjaejoong(),
                        character_johncena(),
                        character_tylerblackburn(),
                        character_calliopemori(),
                        character_leetaemin(),
                        character_parkjimin(),
                        character_johncena(),
                        character_bangyongguk(),
                        character_chengjunya(),
                        character_parkchanyeol(),
                        character_parkjimin(),
                        character_kimjaejoong(),
                        character_johncena(),
                      ],*/
                        ),
                  ],
                ),
              ),
              Container(
                color: theme.backgroundColor,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: roleplay_request(),
                ),
              ),
              Container(
                color: theme.backgroundColor,
              ),
              Container(color: theme.splashColor, height: 4),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
