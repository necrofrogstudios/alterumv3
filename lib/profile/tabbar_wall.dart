import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing/profile/commentSharedPrefs.dart';

class wall_tab extends StatefulWidget {
  @override
  State<wall_tab> createState() => _wall_tabState();
}

class _wall_tabState extends State<wall_tab> {
  comments commentWidget;
  Widget currentPage;

  void removeComment(int index, WallComment comment) {
    deleteComment(comment);
    setState(() {
      commentList.removeAt(index);
    });
  }

  Widget build(BuildContext context) {
    final textController = TextEditingController();
    String a = textController.text;
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height:double.infinity, 
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: TextFormField(
              controller: textController,
              style: TextStyle(color: theme.primaryColor),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: theme.accentColor, width: 4.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: theme.accentColor, width: 4.0),
                ),
                hintText: 'Type a Message Here',
                hintStyle: TextStyle(
                  color: theme.primaryColor.withOpacity(0.45),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 20, 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 4.0, color: theme.accentColor),
                    elevation: 6,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                    backgroundColor: theme.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Post',
                    style: TextStyle(fontSize: 15, color: theme.primaryColor),
                  ),
                  onPressed: () {
                    addComment(textController.text);
                  },
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: commentList.length,
            itemBuilder: (context, index) {
              return comments(commentList[commentListIndexChecker(commentList, index)], removeComment);
            },
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }

  int commentListIndexChecker(List<WallComment> list, int i) {
    if (list.length == 0) {
      return 0;
    } else {
      return ((list.length - i) - 1);
    }
  }

  void addComment(String postText) async {
    final newComment = WallComment(
        id: numberOfComments.toString(), //ID begins at zero and goes up by one every new comment
        profilePhoto: 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg', //filler photo for now
        bodyText: postText,
        date: DateFormat('MM/dd/yyyy - hh:mm a').format(
          DateTime.now(), //takes the date and formats it to something readable
        ));
    saveComment(newComment);
    numberOfComments++;
    setState(() {
      commentList.add(newComment);
    });
  }
}

class WallComment {
  String id;
  String profilePhoto;
  String bodyText;
  String date;

  WallComment({
    this.id,
    this.profilePhoto,
    this.bodyText,
    this.date,
  });
}

class comments extends StatelessWidget {
  WallComment comment;
  Function removeComment;
  comments(this.comment, this.removeComment);

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: theme.splashColor,
              width: 4.0,
            ),
            borderRadius: BorderRadius.circular(
              30.0,
            ),
          ),
          color: theme.accentColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(comment.profilePhoto),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text(
                              'Guarded',
                              style: TextStyle(color: theme.primaryColor, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              comment.date,
                              style: TextStyle(fontSize: 15, color: theme.primaryColor.withOpacity(0.45)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      iconSize: 15,
                      icon: Icon(Icons.close, color: theme.primaryColor),
                      onPressed: () => removeComment(commentList.indexOf(comment), comment),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 20),
                child: SelectableText(
                  comment.bodyText,
                  style: TextStyle(color: theme.primaryColor, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final List<WallComment> commentList = [];
