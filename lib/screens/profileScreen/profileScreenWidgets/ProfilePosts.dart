import 'package:flutter/material.dart';

import './ProfileUserPosts.dart';
import './PostOwner.dart';

class ProfilePosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          kBottomNavigationBarHeight -
          kToolbarHeight -
          20,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            Container(
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(vertical: 10),
                tabs: [
                  Icon(Icons.grid_on),
                  Icon(Icons.local_post_office),
                ],
                indicatorColor: Colors.black,
                labelColor: Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  kBottomNavigationBarHeight -
                  kToolbarHeight -
                  kToolbarHeight -
                  20,
              child: TabBarView(
                children: [
                  ProfileUserPosts(PostOwner.CurentUser),
                  ProfileUserPosts(PostOwner.Else),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
