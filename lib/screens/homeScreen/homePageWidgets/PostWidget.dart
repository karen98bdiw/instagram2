import 'package:flutter/material.dart';
import 'package:instagram/utils/UsersDB.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              leading: CircleAvatar(
                backgroundImage: AssetImage(UsersDB.users[0].image),
              ),
              title: Text(
                "John Lenon",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onPressed: () => print("more")),
              onTap: () => print("tap"),
            ),
          ),
          InkWell(
            onDoubleTap: () => print("doubleTap"),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              padding: EdgeInsets.all(10),
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          IconButton(
                              padding: EdgeInsets.all(10),
                              icon: Icon(
                                Icons.comment,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          IconButton(
                              padding: EdgeInsets.all(10),
                              icon: Icon(
                                Icons.message,
                                color: Colors.black,
                              ),
                              onPressed: null),
                        ]),
                    IconButton(
                      padding: EdgeInsets.all(10),
                      icon: Icon(
                        Icons.bookmark,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    "likes: 12",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(UsersDB.users[0].image),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "write your comment",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.sentiment_satisfied,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.sentiment_dissatisfied,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.sentiment_neutral,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    "writed 1 hour ago",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
