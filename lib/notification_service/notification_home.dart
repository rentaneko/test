import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

FirebaseMessaging _firebaseMessaging = FirebaseMessaging();


class HomeNotify extends StatefulWidget {
  HomeNotify({Key key}) : super(key: key);

  _HomeNotifyState createState() => _HomeNotifyState();
}

class _HomeNotifyState extends State<HomeNotify> {

  @override
  void initState() {
    super.initState();
    setupNotification();
  }

  void setupNotification() async {
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("Message: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("Message: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("Message: $message");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text("Click"),
          onPressed: () {

          }
      ),
    );
  }
}