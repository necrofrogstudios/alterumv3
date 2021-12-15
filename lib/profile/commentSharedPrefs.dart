import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing/profile/tabbar_wall.dart';
import 'tabbar_wall.dart';

int numberOfComments;

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
    'commentCount',
    numberOfComments,
  ); //saves the amount of comments
  prefs.setStringList(
    'commentId' + newComment.id,
    commentProperties,
  ); //saves the properties of the comment to a StringList
  prefs.setBool(
    'commentDeleted' + newComment.id,
    false,
  ); //saves deletion status
}

void restoreData(SharedPreferences prefs) {
  if (prefs.getInt('commentCount') == null) {
    //if comment has never been added, set number of comments to 0
    numberOfComments = 0;
    prefs.setInt('commentCount', 0);
  } else {
    //set numberOfComments equal to whats stored in shared preferences
    numberOfComments = prefs.getInt('commentCount');
  }
  List<String> commentData;
  for (int i = 0; i < numberOfComments; i++) {
    commentData = prefs.getStringList('commentId' + i.toString());
    if (!prefs.getBool('commentDeleted' + i.toString())) {
      //if comment does not have deleted status, add comment to the commentList
      commentList.add(new WallComment(
        id: commentData[0],
        profilePhoto: commentData[1],
        bodyText: commentData[2],
        date: commentData[3],
      ));
    }
  }
}

void deleteComment(WallComment comment) async {
  //sets comment status as deleted
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool(
    'commentDeleted' + comment.id,
    true,
  );
}
