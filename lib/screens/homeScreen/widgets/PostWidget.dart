import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  child: Icon(Icons.supervised_user_circle),
                  minRadius: 30,
                ),
              ),
              title: Text(
                "John Lenon",
              ),
              trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(icon: Icon(Icons.favorite), onPressed: null),
                      IconButton(icon: Icon(Icons.comment), onPressed: null),
                      IconButton(icon: Icon(Icons.message), onPressed: null),
                    ]),
                    IconButton(
                      icon: Icon(Icons.bookmark),
                      onPressed: null,
                    ),
                  ],
                ),
                Text(
                  "liked by 12",
                  textAlign: TextAlign.left,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.supervised_user_circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("write your comment")
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
                Text(
                  "writed 1 hour ago",
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
