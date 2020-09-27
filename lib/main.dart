import 'package:flutter/material.dart';

import './widgets/myBottomNavigationBar.dart';

import 'screens/addScreen/AddScreen.dart';
import 'screens/homeScreen/HomeScreen.dart';
import 'screens/notesScreen/NoteScreen.dart';
import 'screens/profileScreen/ProfilePage.dart';
import 'screens/searchScreen/SearchScreen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "instagram",
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  var screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    NotesScreen(),
    ProfileScreen(),
  ];

  var _curentScreenIndex = 0;

  _onNavItemTapped(int index) {
    setState(() {
      _curentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_curentScreenIndex],
      bottomNavigationBar:
          MyBottomNavigtionBar(_curentScreenIndex, _onNavItemTapped),
    );
  }
}
