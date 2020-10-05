import 'package:flutter/material.dart';

import '../widgets/HomePageAppBar.dart';
import '../widgets/StoryesList.dart';
import '../widgets/PostWidget.dart';

class HomePage extends StatelessWidget {
  final Function openDirectPage;
  final Function openCapturePage;

  HomePage(this.openCapturePage, this.openDirectPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(openCapturePage, openDirectPage),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
          child: Column(
            children: [StoryiesList(), Post(), Post()],
          )),
    );
  }
}
