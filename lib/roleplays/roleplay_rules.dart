import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/roleplays/roleplay_masterlist.dart';
import 'package:testing/roleplays/roleplay_navigation.dart';
import 'package:testing/roleplays/admin_marquee.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';
import 'package:testing/main_page/slideshow.dart';

class roleplay_rules extends StatefulWidget {
  @override
  roleplay_rulesState createState() => roleplay_rulesState();
}

class roleplay_rulesState extends State<roleplay_rules> {
  final currentScreen = roleplay_rules;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "blep",
  ];

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

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
      body: SmartRefresher(
        enablePullDown: true,
        header: WaterDropMaterialHeader(backgroundColor: theme.splashColor, color: theme.primaryColor),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {},
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  roleplay_navigation(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://centerforparentingeducation.org/wp-content/uploads/2014/04/rules.png"), fit: BoxFit.cover),
                        color: theme.backgroundColor,
                        border: Border.all(color: theme.splashColor, width: 3.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Rules',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: theme.primaryColor,
                    ),
                  ),
                  Text(
                    'LET\'S GET STRAIGHT TO THE POINT. THIS IS A PURGE ROLEPLAY. THERE WILL BE GORE, BLOOD, VIOLENCE IN THE TWISTED, SICKEST WAYS IMAGINABLE. THERE ARE ONLY TWO KINDS OF TRIGGERING CONTENT THAT WONT BE ALLOWED HERE: BEASTIALITY AND PEDOPHILIA. WE ARE STILL HUMAN, AND WE DO HAVE SOME STANDARDS. KEEP TRIGGERING CONTENT TO THE RATED M ROOMS.'
                    ' \n EVERYONE IS WELCOME HERE. INTERNATIONALS, YAOI, YURI, STRAIGHT, MULTI-PARA WRITERS TO THE FIRST POV ROLEPLAYERS, THIS IS A PLACE FOR EVERYONE TO ENJOY. YOU ARE PERMITTED UP TO THREE CHARACTERS HERE. NO MINORS ALLOWED. LET ME CLARIFY FOR SOME OF YOU, THAT MEANS NO ONE UNDER 18 IS ALLOWED INSIDE THIS ROLEPLAY. '
                    ' \n DO NOT APPLY FOR A FACECLAIM WITHOUT THE INTENT OF USING IT. AFTER ONE WEEK, WE WILL KNOW WHO YOU ARE AND YOU WILL BE REMOVED FROM THE ROLEPLAY. YOU MAY REQUEST A MONTH HIATUS, BUT IF WE SEE YOU ARE ONLINE AND INACTIVE, YOU WILL BE GIVEN 2 WARNINGS TO GET RID OF THE INACTIVE SIGN BEFORE BEING REMOVED FROM THE ROLEPLAY. YOU MAY REAPPLY AS MANY TIMES AS YOU LIKE.'
                    ' \n MASKS. EVERYONE MUST HAVE ONE. YOU MAY PICK A MASK FROM THE SHOP OR FIND ONE ONLINE. IF YOU NEED HELP ADDING ONE TO YOUR PROFILE, LET AN ADMIN KNOW. YOUR MASK WILL HAVE ONE SUPER HUMAN ABILITY. ONE. IT WILL HELP YOU SURVIVE THE PURGE AND TAKE OUT YOUR ENEMIES. YOUR MASK\'S ABILITY IS THE PASSWORD FOR YOUR APPLICATION. '
                    ' \n DEATH.  AFTER YOUR CHARACTER DIES, YOU WILL BE GIVEN A SKULL MARKING NEXT TO YOUR NAME. THIS IS FOR THE ADMINS TO TRACK WHO IS STILL LIVING IN THE CURRENT EVENT. YOU MAY CONTINUE YOUR CURRENT PLOTS IN EVERY ROOM EXCEPT THE DAY CHAT AND NIGHT CHAT. THOSE ARE CONSIDERED REAL TIME CHAT ROOMS. IF YOU ARE DEAD, YOU ARE A GHOST. HAUNT WHOEVER YOU WANT, BUT YOU CAN NOT KILL. '
                    ' \n LET\'S TALK ABOUT TRIGGERS. SOME TRIGGERS CAN BREAK EVEN THE STRONGEST MINDS. I WOULD SUGGEST YOU PUT IN YOUR PROFILE A LIST OF TRIGGERS YOU ARE NOT COMFORTABLE WITH. AND I EXPECT EVERYONE TO READ AND RESPECT THOSE LISTS BEFORE DIVING INTO A DETAILED POST CONTAINING SUCH CONTENT. THIS IS THE ONLY TIME WHERE AN ADMIN WILL ACKNOWLEDGE TRIGGER CONTENT AS INAPPROPRIATE. IF YOU DON\'T HAVE A LIST, PEOPLE WILL ASSUME YOU HAVE NO LIMITS. ANY TIME A ROLEPLAYER STEPS OUT OF IC TO TELL YOU THEY ARE UNCOMFORTABLE WITH THE PLOT AT HAND, PUT A STOP TO IT IMMEDIATELY. OUR FAMILY COMES FIRST BEFORE YOUR IC CHARACTER. MAKE SURE THE ROLEPLAYER IS OKAY THEN PROCEED TO REPLOT OR AGREE ON DROPPING IT ALL TOGETHER.'
                    ' \n THE SEVEN DEADLY SINS WILL BE WALKING AMONG THE CHARACTERES. THESE ARE THE INSTIGATORS AND MODERATORS OF THE EVENT TO INSURE YOU\'RE PARTICIPATING AND PLAYING BY OUR RULES. THEY ARE KNOWN FOR THEIR VIOLENCE AND TWISTED, GRAPHIC VISIONS OF DEATH. THEY NEVER TAKE THEIR MASKS OFF AND NOBODY KNOWS WHO THEY ARE.  FAILURE TO PARTICIPATE WILL RESULT IN ONE OF THEM VISITING YOU IN THE MIDDLE OF THE NIGHT, BRINGING FORTH YOUR WORST NIGHTMARES BEFORE FORCING YOU INTO AN ETERNAL STATE OF REST. INTERESTED IN BEING A DEADLY SIN? APPLY FOR ANY OPEN CHARACTER WITH ONE OR MORE PARAGRAPHS WITH AN ANGSTY, UNIQUE WAY OF MURDERING ONE OF YOUR VICTIMS. YES, WE WANT TO WATCH YOU PULL THE LIFE FROM SOMEONE\'S BODY, WATCHING AS THE LIGHT FLICKERS FROM THEIR EYES AND DISTINGUISHES AFTER A LONG, MATICULOUS PLANNED OUT TORTURE. THESE ARE TEMPORARY POSITIONS AND YOU MUST REAPPLY FOR THEM IN EACH EVENT. THE SINS CAN BE KILLED, HOWEVER, IT IS NEXT TO IMPOSSIBLE SO MAKE SURE YOU KILL THEM IN ONE MOVE BEFORE YOU BECOME THEIR PERSONAL PROJECT. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: theme.primaryColor,
                    ),
                  ),
                  FlatButton(
                    color: theme.accentColor,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    height: 60.0, // foreground
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => roleplay_masterlist()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Masterlist',
                          style: TextStyle(
                            fontSize: 30,
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: theme.backgroundColor,
              height: 200,
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
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
