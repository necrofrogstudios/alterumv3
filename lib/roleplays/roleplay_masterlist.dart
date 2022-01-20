import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

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

final List<String> masterlist_name = const [
  'Park Jimin',
  'Kim Jaejoong',
  'John Cena',
  'Tyler Blackburn',
  'Calliope Mori',
  'Lee Taemin',
  'Bang Yongguk',
  'Cheng Junya',
  'Park Chanyeol',
];
final List<String> masterlist_image = const [
  'https://th.bing.com/th/id/OIP.-o2GCLO_A2unfT5yubh7HwHaHa?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/R.dc996d3363f9d6c81a8e97a9161bdaf9?rik=j7CrUsFBdr6TJg&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f35800000%2fJaejoong-jyj-35825544-1000-1000.jpg&ehk=VEqPqR5vLUsqFOXEOwtpAzo8v89Lc6WjI10vLQgPnOI%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.5b0123ddd50c4609439a85849ba13da0?rik=zYNUkND2rAAsOg&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/OIP.zwI_5szHy5ChTmwJhgzIaAHaHa?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/OIP.e32kH9Lro6MOvhZW_NiiogHaHa?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/R.1daa4f1db1545cc864e8733273834ed3?rik=4RIbD%2bf0MyHAdg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LqRvElpvWqM%2fUCH-NbQtGFI%2fAAAAAAAAGBI%2f-UpYJoCU6L0%2fs1600%2flee-taemin-lee-taemin-23578754-888-789.jpg&ehk=A%2brUdHBOGXIHbHyaCMLTzXjWiwpRBFykrSGYx8WLHAc%3d&risl=&pid=ImgRaw&r=0',
  'https://i.pinimg.com/originals/1d/8b/f3/1d8bf3d9a45062caa29c2fc90cbc63ed.jpg',
  'https://th.bing.com/th/id/OIP.iTFq_YGToQRgvfVbQgPeGgHaHb?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/OIP.n8a7INyHyCa99P1lI3BhggHaHa?pid=ImgDet&rs=1',
];
final List<String> masterlist_points = const [
  '100',
  '100',
  '100',
  '100',
  '200',
  '200',
  '100',
  '600',
  '300',
];

class roleplay_masterlist extends StatelessWidget {
  final currentScreen = roleplay_masterlist;
  const roleplay_masterlist();

  @override
  Widget build(BuildContext context) {
    List<Widget> masterlist_characters = [];
    for (int i = 0; i < masterlist_name.length; i++) {
      masterlist_characters.add(masterlist_flipcard(masterlist_name[i], masterlist_image[i], masterlist_points[i]));
    }

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
                    GridView.count(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5,
                      children: <Widget>[
                        ...masterlist_characters,
                      ],
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
