import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0.0,
      title: Text("Instagram"),
      leading: GestureDetector(
        child: Icon(Icons.camera_alt),
        onTap: () => print("capture"),
      ),
      actions: [
        IconButton(icon: Icon(Icons.message), onPressed: () => print("direct"))
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
