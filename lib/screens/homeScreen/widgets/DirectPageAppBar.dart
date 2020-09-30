import 'package:flutter/material.dart';

class DirectPageAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function _goBack;

  DirectPageAppBar(this._goBack);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Direct"),
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: _goBack),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
