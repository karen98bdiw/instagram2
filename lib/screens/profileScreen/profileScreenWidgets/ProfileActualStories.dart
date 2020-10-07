import 'package:flutter/material.dart';

class ProfileActualStories extends StatefulWidget {
  @override
  _ProfileActualStoriesState createState() => _ProfileActualStoriesState();
}

class _ProfileActualStoriesState extends State<ProfileActualStories> {
  bool isListOpened;
  double boxHeight;

  Container _addActualStory() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 17, left: 10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[700],
      ),
      child: Icon(Icons.add),
    );
  }

  Container _actualStory() {
    return Container(
      margin: EdgeInsets.only(right: 17),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.redAccent[700],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    isListOpened = false;
  }

  @override
  Widget build(BuildContext context) {
    var queryHeight = MediaQuery.of(context).size.height;
    boxHeight = isListOpened ? queryHeight * 0.25 : queryHeight * 0.07;
    return Container(
      padding: EdgeInsets.all(10),
      height: boxHeight,
      color: Colors.blueGrey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  isListOpened = !isListOpened;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Actuals from stories",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    isListOpened
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 20,
                  ),
                ],
              )),
          Visibility(
            visible: isListOpened,
            child: Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Save your best stories in profile",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) =>
                        index == 0 ? _addActualStory() : _actualStory(),
                    itemCount: 8,
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
