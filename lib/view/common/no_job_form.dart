import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';

class NoJobForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: Dimens.size100),
            alignment: Alignment.center,
            child: Icon(
              Icons.sentiment_dissatisfied,
              size: Dimens.size240,
              color: Colors.grey[400],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("No job!", style: TextStyle(fontSize: Dimens.size30)),
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.size20),
            alignment: Alignment.center,
            child: Text("You have no job now, let find some jobs",
                style: TextStyle(
                    fontSize: Dimens.size20, color: Colors.grey[400])),
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.size20, left: Dimens.size10, right: Dimens.size10),
            alignment: Alignment.center,
            child: RaisedButton(
              color: Colors.blue[400],
              child: Text("Find jobs", style: TextStyle(fontSize: Dimens.size20,color: Colors.white)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    )
    );
  }
}
