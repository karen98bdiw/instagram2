import 'package:flutter/material.dart';
import '../../../utils/UsersDB.dart';

class StoryiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: UsersDB.users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => LayoutBuilder(
          builder: (ctx, c) => Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: c.maxHeight * 0.9,
                width: c.maxHeight * 0.9,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(UsersDB.users[index].image),
                    )),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: c.maxHeight * 0.9,
                width: c.maxHeight * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
