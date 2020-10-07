import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Container(
            height: kToolbarHeight,
            child: TabBar(
              tabs: [
                Icon(Icons.grid_on),
                Icon(Icons.local_post_office),
              ],
              indicatorColor: Colors.black,
              labelColor: Colors.black,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Text("posts"),
                Text("friendPosts"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
