import 'package:flutter/material.dart';

import '../widgets/DirectPageAppBar.dart';
import '../../../utils/UsersDB.dart';

class DirectPage extends StatelessWidget {
  final Function _goBackCallBack;

  DirectPage(this._goBackCallBack);

  final users = UsersDB.users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DirectPageAppBar(_goBackCallBack),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 15),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
                prefixIcon: Icon(Icons.find_in_page),
                hintText: "Find",
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) => ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.asset(users[index].image),
                  ),
                ),
                title: Text(
                  users[index].name,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text("online 2min ago"),
                trailing:
                    IconButton(icon: Icon(Icons.camera_alt), onPressed: null),
              ),
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
