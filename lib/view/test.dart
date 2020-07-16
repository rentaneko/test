import 'package:flutter/material.dart';

class Tester extends StatefulWidget {
  final String response;

  const Tester({Key key, this.response}) : super(key: key);
  @override
  _TesterState createState() => _TesterState(response);
}

class _TesterState extends State<Tester> {
  final String response;

  _TesterState(this.response);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('$response'),
    );
  }
}