import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:testing/main.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/main_page/marquee.dart';
import 'package:testing/main_page/roleplay_list_layout.dart';

class main_page extends StatefulWidget {
  @override
  main_pageState createState() => main_pageState();
}

class main_pageState extends State<main_page> {
  final currentScreen = main_page;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "Popular",
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
              child: marquee(),
            ),
            Container(color: theme.splashColor, height: 4),
            slideshow(),
            Container(
              color: theme.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      items[0],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(color: theme.backgroundColor, child: roleplay_list_layout()),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}

class slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 200,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.blue,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.all(color: Colors.green, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27.0),
                child: Image.network(
                  'https://nexter.org/wp-content/uploads/2018/10/REAL-American-Haunted-Houses-pic10-e1538380539961.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 100, 3, 0),
              child: FlatButton(
                color: theme.accentColor,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                height: 20.0, // foreground
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bucky\'s Play House',
                      style: TextStyle(
                        fontSize: 10,
                        color: theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Image.network(
          'https://sportshub.cbsistatic.com/i/r/2018/09/05/da806911-77eb-42d0-896c-0ce1495392ef/thumbnail/1200x675/1c8b00bf06837191aa6a350fa2389a2b/hauntedhotel-cover.png',
          fit: BoxFit.cover,
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,

      /// Loops back to first slide.
      isLoop: true,
    );
  }
}
