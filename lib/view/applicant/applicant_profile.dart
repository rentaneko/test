import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';

class ApplicantProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimens.size40),
        child: Container(
          color: Colors.blue,
          child: ListTile(
            title: Center(
              child: Text(
                "Profile",
                style: TextStyle(fontSize: Dimens.size24),
              ),
            ),
            trailing: Icon(
              Icons.settings,
              size: Dimens.size20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: Dimens.size90,
            padding: EdgeInsets.only(left: Dimens.size20, top: Dimens.size10),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: Dimens.size15),
                  child: CircleAvatar(
                    radius: Dimens.size40,
                    backgroundImage: AssetImage("assets/images/adv1.png"),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Tien Quoc",
                        style: TextStyle(fontSize: Dimens.size20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: Dimens.size400,
            margin: EdgeInsets.only(top: Dimens.size20),
            child: Column(
              children: <Widget>[
                Container(
                  height: Dimens.size30,
                  margin: EdgeInsets.only(
                      top: Dimens.size10, bottom: Dimens.size10),
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      "Information",
                      style: TextStyle(fontSize: Dimens.size18),
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name",
                        style: TextStyle(fontSize: Dimens.size15),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Username",
                          style: TextStyle(fontSize: Dimens.size15)),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Address",
                          style: TextStyle(fontSize: Dimens.size15)),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Birthday",
                          style: TextStyle(fontSize: Dimens.size15)),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Birthday',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.size10, bottom: Dimens.size10),
            height: Dimens.size240,
            child: Column(
              children: <Widget>[
                Container(
                  height: Dimens.size30,
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      "Introduction",
                      style: TextStyle(fontSize: Dimens.size18),
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      top: Dimens.size10,
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Description",
                        style: TextStyle(fontSize: Dimens.size15),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: Dimens.size80,
                  margin: EdgeInsets.only(
                      bottom: Dimens.size5,
                      left: Dimens.size10,
                      right: Dimens.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Skill",
                        style: TextStyle(fontSize: Dimens.size15),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Skill',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
              color: Colors.blue[400],
              child: Container(
                height: Dimens.size40,
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: Dimens.size15),
                  ),
                ),
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
