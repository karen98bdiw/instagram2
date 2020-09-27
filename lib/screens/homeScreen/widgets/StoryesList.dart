import 'package:flutter/material.dart';

class StoryiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemBuilder: (ctx, index) => Container(
          height: 50,
          width: 50,
          color: Colors.green,
          margin: EdgeInsets.only(left: 10),
        ),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
