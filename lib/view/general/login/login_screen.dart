import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';
import 'package:project06/styles/icon/socicon_icons.dart';
import 'package:project06/view/applicant/applicant_home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(176, 102, 254, 1),
              Color.fromRGBO(99, 226, 255, 1),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(height: Dimens.size50),
            Container(
              height: Dimens.size250,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: Dimens.size30),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(Dimens.size50),
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: Dimens.size1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: Dimens.size50,
                    margin: EdgeInsets.symmetric(horizontal: Dimens.size25),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ApplicantHome(),
                        ));
                      },
                      icon: Icon(Socicon.facebook),
                      label: Text(
                        'Login with Facebook',
                        style: TextStyle(fontSize: Dimens.size19),
                      ),
                      textColor: Colors.white,
                      color: Color.fromRGBO(59, 89, 152, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.size14),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimens.size30),
                  Container(
                    width: double.infinity,
                    height: Dimens.size50,
                    margin: EdgeInsets.symmetric(horizontal: Dimens.size25),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ApplicantHome(),
                        ));
                      },
                      icon: Icon(Socicon.google),
                      label: Text(
                        'Login with Google',
                        style: TextStyle(fontSize: Dimens.size20),
                      ),
                      textColor: Colors.white,
                      color: Color.fromRGBO(234, 67, 53, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.size14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
