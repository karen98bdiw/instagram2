import 'package:flutter/material.dart';

import 'profileScreenWidgets/ProfileScreenAppBar.dart';
import 'profileScreenWidgets/ProfileScreenDrawer.dart';
import './profileScreenWidgets/ProfileScreenInfo.dart';
import './profileScreenWidgets/ProfileActualStories.dart';
import './profileScreenWidgets/ProfilePosts.dart';

import '../../models/User.dart';
import '../../utils/UsersDB.dart';

class ProfileScreen extends StatelessWidget {
  final User curentUser = UsersDB.users[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfilScreenAppBar(curentUser),
      endDrawer: ProfileScreenDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileScreenInfo(curentUser),
            ProfileActualStories(),
            ProfilePosts(),
          ],
        ),
      ),
    );
  }
}
