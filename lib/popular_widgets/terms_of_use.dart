import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class terms_of_use extends StatefulWidget {
  @override
  terms_of_useState createState() => terms_of_useState();
}

class terms_of_useState extends State<terms_of_use> {
  final currentScreen = terms_of_use;
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
            Column(
              children: <Widget>[
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Text(
                    'General Guidlines: \n \n'
                    '001; You must be 13 years old to use this app and 18 or older to access Mature content.  \n \n'
                    '002; No harrassment or bullying is allowed among roleplayers. Should you or someone you know are faced with harrassment of any form, contact a moderator immediately \n \n'
                    '003; At the bottom of every page, there is a contact support button if help is ever needed. \n \n'
                    '004; if you dont get it by now then you never will sorry not sorry \n \n',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  child: RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                        fontSize: 15.0,
                        color: theme.primaryColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Terms and conditions \n', style: TextStyle(fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'These terms and conditions (“Agreement”) set forth the general terms and conditions of your use of the “Alterum” mobile application (“Mobile Application” or “Service”) and any of its related products and services (collectively, “Services”). This Agreement is legally binding between you (“User”, “you” or “your”) and this Mobile Application developer (“Operator”, “we”, “us” or “our”). If you are entering into this agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms “User”, “you” or “your” shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.  \n \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                        TextSpan(text: 'Hello \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: theme.primaryColor)),
                        TextSpan(text: 'World is on lsom sdlfkasdf yep \n', style: TextStyle(fontSize: 15, color: theme.primaryColor)),
                      ],
                    ),
                  ),
                ),
              ],
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
