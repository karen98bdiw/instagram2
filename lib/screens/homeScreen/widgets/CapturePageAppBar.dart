import 'package:flutter/material.dart';

class CapturePageAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function _goNextPageCallBack;

  CapturePageAppBar(this._goNextPageCallBack);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Capture"),
      actions: [
        IconButton(icon: Icon(Icons.close), onPressed: _goNextPageCallBack)
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
