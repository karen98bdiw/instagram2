import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../utils/icons/my_flutter_app_icons.dart';

class MyBottomNavigtionBar extends StatelessWidget {
  int _curentPageIndex;
  Function _onNavItemTapped;

  MyBottomNavigtionBar(this._curentPageIndex, this._onNavItemTapped);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Foundation.home),
          title: Text("home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.search),
          title: Text("search"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.plus_square),
          title: Text("add"),
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.heart_empty),
          activeIcon: Icon(MyFlutterApp.heart),
          title: Text("favorite"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.user),
          title: Text("profile"),
        ),
      ],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      currentIndex: _curentPageIndex,
      onTap: (value) => _onNavItemTapped(value),
    );
  }
}
