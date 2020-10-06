import 'package:flutter/material.dart';
import '../../../models/User.dart';

class ProfilScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  final User curentUser;
  ProfilScreenAppBar(this.curentUser);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.add),
        onPressed: () => print("profile:add"),
      ),
      title: RichText(
        text: TextSpan(
          children: <InlineSpan>[
            TextSpan(
                text: curentUser.name,
                style:
                    TextStyle(color: Theme.of(context).textTheme.title.color)),
            WidgetSpan(child: Icon(Icons.keyboard_arrow_down)),
          ],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
