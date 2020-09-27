import 'package:flutter/material.dart';

import 'pages/CapturePage.dart';
import 'pages/HomePage.dart';
import 'pages/DirectPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: [
        CapturePage(),
        HomePage(),
        DirectPage(),
      ],
    ));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
