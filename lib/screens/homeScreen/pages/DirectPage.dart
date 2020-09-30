import 'package:flutter/material.dart';

import '../widgets/DirectPageAppBar.dart';

class DirectPage extends StatelessWidget {
  final Function _goBackCallBack;

  DirectPage(this._goBackCallBack);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DirectPageAppBar(_goBackCallBack),
      body: Center(
        child: Text("direct"),
      ),
    );
  }
}
