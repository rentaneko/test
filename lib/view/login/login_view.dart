import 'package:flutter/material.dart';
import 'package:project07/styles/dimension/dimens.dart';
import 'package:project07/styles/icon/socicon_icons.dart';
import 'package:project07/viewmodel/login/login_viewmodel.dart';

class LoginPage extends StatelessWidget {
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
              //height: Dimens.size250,

              height: 400,
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
                        LoginViewModel loginViewModel = LoginViewModel();
                        loginViewModel.checkLogin(context);
                      },
                      icon: Icon(Socicon.google),
                      label: Text(
                        'Login with Google',
                        style: TextStyle(fontSize: Dimens.size19),
                      ),
                      textColor: Colors.white,
                      //  color: Color.fromRGBO(59, 89, 152, 1),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.size14),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimens.size30),
                  RaisedButton(
                    onPressed: () {
                      print('User Sign Out');
                      LoginViewModel lg = LoginViewModel();
                      lg.signOutGoogle();
                    },
                    child: Text('Log Out'),
                  ),
                  SizedBox(height: Dimens.size30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
