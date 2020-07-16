import 'package:flutter/material.dart';
import 'package:project06/test.dart';
import 'package:project06/view/general/homepage/home_page.dart';
import 'package:project06/view/general/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuildHomePage(),
    );
  }
}

