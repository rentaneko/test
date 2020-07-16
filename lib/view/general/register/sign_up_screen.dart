import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';
import 'package:project06/view/common/edit_text_box.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int selectedRole;
  int selectedGender;
  @override
  void initState() {
    super.initState();
    selectedRole = 1;
    selectedGender = 3;
  }

  setSelectedRole(int value) {
    setState(() {
      selectedRole = value;
    });
  }

  setSelectedGender(int value) {
    setState(() {
      selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue[500],
            Colors.blue[300],
            Colors.blue[100],
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(280),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png', scale: 2),
              Text('SIGN UP',
                  style: TextStyle(
                    fontSize: Dimens.size35,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: Colors.black45,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: ListView(
            children: <Widget>[
              EditTextBox(readOnly: true, hintText: 'Email'),
              SizedBox(height: 10),
              EditTextBox(readOnly: false, hintText: 'Full name'),
              SizedBox(height: 10),
              roleRadio(),
              rolePage(selectedRole),
            ],
          ),
        ),
      ),
    );
  }

  Widget roleRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'You are: ',
          style:
              TextStyle(fontSize: Dimens.size20, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: selectedRole,
              onChanged: (val) {
                setSelectedRole(val);
              },
              activeColor: Colors.blue,
            ),
            Text(
              'Applicant',
              style: TextStyle(
                fontSize: Dimens.size20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: Dimens.size50),
            Radio(
              value: 2,
              groupValue: selectedRole,
              onChanged: (val) {
                setSelectedRole(val);
              },
              activeColor: Colors.blue,
            ),
            Text(
              'Company',
              style: TextStyle(
                fontSize: Dimens.size20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget applicantRegisterDetails() {
    return Column(
      children: <Widget>[
        EditTextBox(readOnly: false, hintText: 'Phone number'),
        SizedBox(height: 10),
        EditTextBox(readOnly: false, hintText: 'Birthdate'),
        genderRadio(),
        SizedBox(height: 10),
        EditTextBox(readOnly: false, hintText: 'Identify Number Card'),
        SizedBox(height: 10),
        TextField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Description',
            hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Description',
            hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget genderRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Gender: ',
            style: TextStyle(
                fontSize: Dimens.size20, fontWeight: FontWeight.w600)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 3,
              groupValue: selectedGender,
              onChanged: (val) {
                setSelectedGender(val);
              },
              activeColor: Colors.blue,
            ),
            Text(
              'Male',
              style: TextStyle(
                fontSize: Dimens.size20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: Dimens.size50),
            Radio(
              value: 4,
              groupValue: selectedGender,
              onChanged: (val) {
                setSelectedGender(val);
              },
              activeColor: Colors.blue,
            ),
            Text(
              'Female',
              style: TextStyle(
                fontSize: Dimens.size20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget companyRegisterDetails() {
    return Column(
      children: <Widget>[
        EditTextBox(readOnly: false, hintText: 'Company Name'),
        SizedBox(height: 10),
        EditTextBox(readOnly: false, hintText: 'Identify Tax Code'),
        SizedBox(height: 10),
        EditTextBox(readOnly: false, hintText: 'Identify Card Number'),
      ],
    );
  }

  Widget rolePage(int isRole) {
    return isRole == 1 ? applicantRegisterDetails() : companyRegisterDetails();
  }
}
