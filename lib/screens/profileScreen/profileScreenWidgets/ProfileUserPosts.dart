import 'dart:math';

import 'package:flutter/material.dart';
import './PostOwner.dart';

class ProfileUserPosts extends StatefulWidget {
  final PostOwner postOwner;

  ProfileUserPosts(this.postOwner);
  @override
  _ProfileUserPostsState createState() => _ProfileUserPostsState();
}

class _ProfileUserPostsState extends State<ProfileUserPosts> {
  List<int> fullList = [1, 2, 3, 4];
  List<int> emptyList = [];

  List<int> posts = [];

  Padding _buildEmptyPostsView(owner) {
    return owner == PostOwner.CurentUser
        ? Padding(
            padding: const EdgeInsets.only(left: 50, top: 40, right: 50),
            child: Column(
              children: [
                Icon(
                  Icons.add_circle_outline,
                  size: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Images and videos which you shared will be showes in your profile",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Share your first image or video",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      posts = fullList;
                    });
                  },
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 50, top: 40, right: 50),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Images With You",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Images and videos which your friend share with you",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "some thing",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      posts = fullList;
                    });
                  },
                ),
              ],
            ),
          );
  }

  GridView _buildPostsView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.40),
      itemBuilder: (ctx, index) {
        return InkWell(
          child: Container(
            color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
                Random().nextInt(255), 1),
            child: Text("post:$index"),
          ),
          onDoubleTap: () {
            setState(() {
              posts = emptyList;
            });
          },
        );
      },
      itemCount: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return posts.isEmpty
        ? _buildEmptyPostsView(widget.postOwner)
        : _buildPostsView();
  }
}
