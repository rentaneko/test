import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project07/view/register/register_view.dart';

class LoginViewModel {
  FirebaseAuth _firebaseAuth;
  GoogleSignIn _googleSignIn;

  LoginViewModel({FirebaseAuth firebaseAuth, GoogleSignIn googleSignin})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();

  Future<FirebaseUser> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user =
        (await _firebaseAuth.signInWithCredential(credential)).user;

    return user;
  }

  void signOutGoogle() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  Future<String> checkLogin(BuildContext context) async {
    String email;
    await signInWithGoogle().then((value) => {email = value.email});
    final http.Response response = await http.post(
      'https://instancejob2.azurewebsites.net/api/login',
      body: jsonEncode(email),
    );

    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Container()));
      return '200';
    } else if (response.statusCode == 404) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegisterPage(email: email)));
      return '404';
    }
    return 'failed';
  }
}
