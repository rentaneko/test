import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() => runApp(CompanyProfile());

class CompanyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Company Profile",
      home: CompanyProfileScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class CompanyProfileScreen extends StatefulWidget {
  CompanyProfileScreen({Key key}) : super(key: key);

  

  @override
  State<StatefulWidget> createState() {
    return _CompanyProfileState();
  }
}

class _CompanyProfileState extends State<CompanyProfileScreen> {

  Future<List<Applicant>> _fetchData() async {
    final response = await http.get('https://instancejob.azurewebsites.net/api/applicants');
    if(response.statusCode == 200) {
      final data = response.body;
      print(data);

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // futureApplicant = _fetchData();
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        onPressed: () {
          return _fetchData();
        }
      ),
    );
    /* return Scaffold(
      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Company Profile"),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue[500],
                  Colors.blue[200],
                  Colors.white
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/work.png')),
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Company Name",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration:
                                      InputDecoration(icon: Icon(Icons.edit)),
                                  enabled: false,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Address",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration:
                                      InputDecoration(icon: Icon(Icons.edit)),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Phone no",
                            )),
                        Expanded(flex: 4, child: TextFormField()),
                        Expanded(flex: 1, child: Icon(Icons.edit)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Phone no",
                            )),
                        Expanded(flex: 4, child: TextFormField()),
                        Expanded(flex: 1, child: Icon(Icons.edit)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Phone no",
                            )),
                        Expanded(flex: 4, child: TextFormField()),
                        Expanded(flex: 1, child: Icon(Icons.edit)),
                      ],
                    ),
                  ),

                  RaisedButton(
                    onPressed: () => _fetchData(),
                  )
                ],
              ),
            ],
          ),
        ));
        */
  }
}

class Applicant {
  final String applicantId;
  final String password;
  final String email;
  final String phone;
  final String fullName;
  final DateTime birthdate;
  final bool gender;
  final String avatar;
  final String address;
  final String identifyCardNumber;
  final String seftDescribe;
  final DateTime createdDate;
  final bool status;

  Applicant({
    this.applicantId,
    this.password,
    this.email,
    this.phone,
    this.fullName,
    this.address,
    this.birthdate,
    this.gender,
    this.avatar,
    this.createdDate,
    this.identifyCardNumber,
    this.seftDescribe,
    this.status
  });

  factory Applicant.fromJson(Map<String, dynamic> json) {
    return Applicant(
      applicantId: json['applicantId'],
      address: json['address'],
      password: json['password'],
      email: json['email'],
      avatar: json['avatar'],
      identifyCardNumber: json['identifyCardNumer'],
      birthdate: json['birthdate'],
      createdDate: json['createdDate'],
      fullName: json['fullName'],
      gender: json['gender'],
      phone: json['phone'],
      seftDescribe: json['seflDescribe'],
      status: json['status']
    );
  }
}

class ApplicantList {
  final List<Applicant> applicants;

  ApplicantList({
    this.applicants
  });

  factory ApplicantList.fromJson(List<dynamic> parsedJson) {
    List<Applicant> applicants = new List<Applicant>();
    applicants = parsedJson.map((e) => Applicant.fromJson(e)).toList();
    return new ApplicantList(
      applicants: applicants
    );
  }
}