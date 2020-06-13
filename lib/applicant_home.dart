import 'package:flutter/material.dart';
import 'package:project06/widget/dashboard.dart';

class ApplicantHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Dashboard(),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("LOG OUT"),
          ),
        ],
      ),
    );
  }

  Widget myAdvestisingCard(String img) {
    return Container(
      child: Image.asset(img, width: 400, height: 150),
    );
  }
}
