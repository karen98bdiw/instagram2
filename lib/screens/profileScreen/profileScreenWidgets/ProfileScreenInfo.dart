import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../models/User.dart';

class ProfileScreenInfo extends StatelessWidget {
  final User curentUser;

  ProfileScreenInfo(this.curentUser);

  Column _buildInfoProperties(
      String pCount, String pName, Orientation orientation) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          pCount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        orientation == Orientation.portrait
            ? SizedBox(
                height: 3,
              )
            : SizedBox(height: 0),
        Text(
          pName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        )
      ],
    );
  }

  Text _userFullName(String name, String surname) {
    return Text(
      "$name $surname",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      textAlign: TextAlign.left,
    );
  }

  Text _userBio(String bioText) {
    return Text(
      bioText,
      style: TextStyle(
        fontSize: 13,
      ),
      textAlign: TextAlign.left,
    );
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    var orientation = query.orientation;
    return Container(
      color: Colors.amber[200],
      height: query.size.height * 0.3,
      child: LayoutBuilder(
        builder: (ctx, cnts) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red[200],
              height: cnts.maxHeight * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: cnts.maxHeight * 0.2,
                    backgroundImage: AssetImage(curentUser.image),
                  ),
                  _buildInfoProperties("22", "posts", orientation),
                  _buildInfoProperties("36", "followers", orientation),
                  _buildInfoProperties("54", "following", orientation),
                ],
              ),
            ),
            Container(
              height: cnts.maxHeight * 0.30,
              alignment: Alignment.topLeft,
              color: Colors.blueAccent[200],
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _userFullName("John", "Lenon"),
                  _userBio("i dont know")
                ],
              ),
            ),
            Text(
              "data",
              style: TextStyle(backgroundColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
