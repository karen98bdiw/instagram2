import 'package:flutter/material.dart';

import './widgets/HomePageAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
