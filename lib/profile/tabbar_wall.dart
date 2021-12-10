import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class wall_tab extends StatefulWidget {
  @override
  State<wall_tab> createState() => _wall_tabState();
}

class _wall_tabState extends State<wall_tab> {
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    String a = textController.text;
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: TextFormField(
                controller: textController,
                style: TextStyle(color: theme.primaryColor),
                //overflow bug if too much text is entered in this field
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: theme.accentColor, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: theme.accentColor, width: 3.0),
                  ),
                  hintText: 'Type a Message Here',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                ),
              ),
            ),

            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 30, 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 3.0, color: theme.accentColor),
                      elevation: 6,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                      backgroundColor: theme.backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
                return comments(commentList[commentListIndexChecker(commentList, index)]);
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            //comments(commentList[0])
          ],
        ),
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

  void addComment(String postText) {
    final newComment = WallComment(id: '1', profilePhoto: 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Picture.jpg', bodyText: postText, date: DateTime.now());
    setState(() {
      commentList.add(newComment);
    });
  }
}

class WallComment {
  String id;
  String profilePhoto;
  String bodyText;
  DateTime date;

  WallComment({this.id, this.profilePhoto, this.bodyText, this.date});
}

class comments extends StatelessWidget {
  WallComment comment;
  comments(this.comment);

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.splashColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            30.0,
          ),
        ),
        color: Colors.grey[850],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(comment.profilePhoto),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        'Guarded',
                        style: TextStyle(color: theme.primaryColor, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        DateFormat('MM/dd/yyyy - hh:mm a').format(comment.date),
                        style: TextStyle(color: theme.primaryColor.withOpacity(0.45)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 20),
              child: SelectableText(
                comment.bodyText,
                style: TextStyle(color: theme.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<WallComment> commentList = [];
