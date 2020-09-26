import 'package:flutter/material.dart';

import './widgets/myBottomNavigationBar.dart';

import './pages/addPage/addPage.dart';
import './pages/homePage/homePage.dart';
import './pages/notesPage/notePage.dart';
import './pages/profilePage/profilePage.dart';
import './pages/searchPage/searchPage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "instagram",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    NotesPage(),
    ProfilePage(),
  ];

  var _curentPageIndex = 0;

  _onNavItemTapped(int index) {
    setState(() {
      _curentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_curentPageIndex],
      bottomNavigationBar:
          MyBottomNavigtionBar(_curentPageIndex, _onNavItemTapped),
    );
  }
}
