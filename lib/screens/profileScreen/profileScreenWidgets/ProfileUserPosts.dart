import 'package:flutter/material.dart';

class ProfileUserPosts extends StatefulWidget {
  @override
  _ProfileUserPostsState createState() => _ProfileUserPostsState();
}

class _ProfileUserPostsState extends State<ProfileUserPosts> {
  var posts = [];

  Padding _buildEmptyPostsView() {
    return Padding(
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
          Text(
            "Share your firs image or video",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildPostsView() {
    return Container(
      child: Center(
        child: Text("posts"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return posts.isEmpty ? _buildEmptyPostsView() : _buildPostsView();
  }
}
