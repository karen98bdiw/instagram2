import 'package:flutter/material.dart';

import 'homePages/CapturePage.dart';
import 'homePages/HomePage.dart';
import 'homePages/DirectPage.dart';

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

  void goNextPageCallBack() {
    _pageController.animateToPage((_pageController.page + 1.0).floor(),
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void goPreviusPageCallBack() {
    _pageController.animateToPage((_pageController.page - 1.0).floor(),
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: [
        CapturePage(goNextPageCallBack),
        HomePage(goPreviusPageCallBack, goNextPageCallBack),
        DirectPage(goPreviusPageCallBack),
      ],
    ));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
