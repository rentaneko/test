import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project06/applicant_home.dart';
import 'package:project06/home_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _message = 'You are not sign in';
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;

    setState(() {
      // User đã login thì hiển thị đã login
      print(googleAuth.idToken);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ApplicantHomeScreen()));
    });
    return user;
  }

  Future _handleSignOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    setState(() {
      _message = "You are not sign out";
    });
  }

  Future _checkLogin() async {
    // Khi mở app lên thì check xem user đã login chưa
    final FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      setState(() {
        _message = "You are signed in";
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BuildHomePage()));
      });
    }
  }

  @override
  void initState() {
    _checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_message),
            OutlineButton(
              onPressed: () {
                _handleSignIn();
              },
              child: Text('Login'),
            ),
            OutlineButton(
              onPressed: () {
                _handleSignOut();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
