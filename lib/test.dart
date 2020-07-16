import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project06/model/applicant/applicant.dart';

class ApplicantHomeScreen extends StatefulWidget {
  @override
  _ApplicantHomeScreenState createState() => _ApplicantHomeScreenState();
}

class _ApplicantHomeScreenState extends State<ApplicantHomeScreen> {
  Future<List<Applicant>> fetchData() async {
    final response =
        await http.get('https://instancejob.azurewebsites.net/api/applicants');
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List).map((e) => Applicant.fromJson(e)).toList();
    }else{
      print("Loi cmnd");
    }
    // return throw ("Loi");
  }

  Future<List<Applicant>> listApplicant;

  @override
  void initState() {
    super.initState();
    listApplicant = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Applicant>>(
            future: listApplicant,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(child: Text(snapshot.data[0].email ??""));
              }
              else if(snapshot.error) {
                return Center(child: Text(snapshot.error));
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
    );
  }

  Widget myAdvestisingCard(String img) {
    return Container(
      child: Image.asset(img, width: 400, height: 150),
    );
  }
}