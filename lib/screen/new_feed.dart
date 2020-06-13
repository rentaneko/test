import 'package:flutter/material.dart';
import 'package:project06/widget/blogs.dart';


List<Widget> containers =  [
  Blogs(),
  Container(color: Colors.purpleAccent),
  Container(color: Colors.lightGreen),
];


class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News Feed",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(tabs: <Widget>[
            Tab(text: 'Blogs'),
            Tab(text: 'Posts'),
            Tab(text: 'Works'),
          ]),
        ),
        body: TabBarView(children: containers),
      ),
    );
  }
}
