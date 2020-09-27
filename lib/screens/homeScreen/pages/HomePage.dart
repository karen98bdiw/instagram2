import 'package:flutter/material.dart';

import '../widgets/HomePageAppBar.dart';
import '../widgets/StoryesList.dart';
import '../widgets/PostWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [StoryiesList(), Post()],
      )),
    );
  }
}
