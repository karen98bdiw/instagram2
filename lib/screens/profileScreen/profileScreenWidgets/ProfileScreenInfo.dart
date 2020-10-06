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
      maxLines: 1,
    );
  }

  Text _userBio(String bioText) {
    return Text(
      bioText,
      style: TextStyle(
        fontSize: 13,
      ),
      maxLines: 1,
      textAlign: TextAlign.left,
    );
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    var orientation = query.orientation;
    return Container(
      padding: EdgeInsets.only(top: 0),
      color: Colors.amber[200],
      height: query.size.height * 0.3,
      child: LayoutBuilder(
        builder: (ctx, cnts) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red[200],
              height: cnts.maxHeight * 0.5,
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
            Flexible(
              child: Container(
                alignment: Alignment.topLeft,
                color: Colors.blueAccent[200],
                padding: orientation == Orientation.portrait
                    ? EdgeInsets.symmetric(vertical: 10, horizontal: 15)
                    : EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _userFullName("John", "Lenon"),
                    _userBio("i dont know")
                  ],
                ),
              ),
            ),
            Container(
              width: cnts.maxWidth * 0.95,
              height: cnts.maxHeight * 0.15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 1, color: Colors.grey[400]),
              ),
              child: Text(
                "Edit profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
