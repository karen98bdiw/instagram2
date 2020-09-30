import 'package:flutter/material.dart';

import '../widgets/HomePageAppBar.dart';
import '../widgets/StoryesList.dart';
import '../widgets/PostWidget.dart';

class HomePage extends StatelessWidget {
  final PageController _pageController;

  HomePage(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
          child: Column(
            children: [StoryiesList(), Post(), Post()],
          )),
    );
  }
}
