import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function openDirect;
  final Function openCapture;

  HomePageAppBar(this.openCapture, this.openDirect);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0.0,
      title: Text("Instagram"),
      leading: GestureDetector(
        child: Icon(Icons.camera_alt),
        onTap: openCapture,
      ),
      actions: [IconButton(icon: Icon(Icons.message), onPressed: openDirect)],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
