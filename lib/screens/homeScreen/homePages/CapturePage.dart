import 'package:flutter/material.dart';
import '../homePageWidgets/CapturePageAppBar.dart';

class CapturePage extends StatelessWidget {
  final Function nextPageCallBack;

  CapturePage(this.nextPageCallBack);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CapturePageAppBar(nextPageCallBack),
      body: Center(
        child: Text("capture"),
      ),
    );
  }
}
