import 'package:flutter/material.dart';

class Falied extends StatefulWidget {
  final String failed;

  const Falied({Key key, this.failed}) : super(key: key);
  @override
  _FaliedState createState() => _FaliedState(failed);
}

class _FaliedState extends State<Falied> {
  final String failed;

  _FaliedState(this.failed);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(failed),
    );
  }
}
