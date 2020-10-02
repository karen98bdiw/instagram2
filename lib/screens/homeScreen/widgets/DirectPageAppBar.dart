import 'package:flutter/material.dart';

class DirectPageAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function _goBack;

  DirectPageAppBar(this._goBack);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Direct",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () => print("back")),
      actions: [
        IconButton(
            icon: Icon(Icons.video_call), onPressed: () => print("videoChat")),
        IconButton(
            icon: Icon(Icons.chat), onPressed: () => print("messageChat")),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
