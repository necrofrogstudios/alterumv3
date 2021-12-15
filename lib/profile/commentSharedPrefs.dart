import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing/profile/tabbar_wall.dart';
import 'tabbar_wall.dart';

Future<SharedPreferences> initializeSharedPrefs() async {
  //sharedpreferences initialization
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  return prefs;
}

void saveComment(WallComment newComment) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> commentProperties = [
    //entering in all properties of the comment in a list to store using sharedpreferences
    newComment.id,
    newComment.profilePhoto,
    newComment.bodyText,
    newComment.date,
  ];
  prefs.setInt(
      'commentCount', commentList.length); //saves the amount of comments
  prefs.setStringList(
    'commentId' + newComment.id, //key to access comment data
    commentProperties, //comment data
  );
}

void restoreData(SharedPreferences prefs) {
  int numberOfComments;
  if (prefs.getInt('commentCount') == null) {
    numberOfComments = 0;
  } else {
    numberOfComments = prefs.getInt('commentCount');
  } //gets the number of comments
  List<String> commentData;
  for (int i = 0; i < numberOfComments; i++) {
    commentData = prefs.getStringList('commentId' + i.toString());
    commentList.add(new WallComment(
      id: commentData[0],
      profilePhoto: commentData[1],
      bodyText: commentData[2],
      date: commentData[3],
    ));
  }
}
