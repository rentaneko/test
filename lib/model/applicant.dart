import 'dart:convert';

import 'package:http/http.dart' as http;

class Applicant {
  final String email;
  final String password;
  final String applicantID;
  final String fullname;
  final String phone;
  final String birthdate;
  final String gender;
  final String avatar;
  final String address;
  final String identifyCardNumber;
  final String seflDescribe;
  final String createdDate;
  final String status;

  Applicant({
    this.address,
    this.avatar,
    this.birthdate,
    this.createdDate,
    this.email,
    this.applicantID,
    this.fullname,
    this.gender,
    this.identifyCardNumber,
    this.password,
    this.phone,
    this.seflDescribe,
    this.status,
  });


  factory Applicant.fromJson(Map<String, dynamic> json){
    return Applicant(
      address: json['address'],
      applicantID: json['applicantID'],
      avatar: json['avatar'],
      birthdate: json['birthDate'],
      createdDate: json['createdDate'],
      email: json['email'],
      fullname: json['fullName'],
      gender: json['gender'],
      identifyCardNumber: json['identifyCardNumber'],
      password: json['password'],
      phone: json['phone'],
      seflDescribe: json['seflDescribe'],
      status: json['status'],
    );
  }


  static Future<List<Applicant>> fetchApplicant(http.Client client) async {
    final response = await client.get('https://instancejob.azurewebsites.net/api/applicants');
   
     final json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return (Applicant.fromJson(json) as List);
      
      // list = json.decode(response.body);
       
      // List<Applicant> listApplicant = new List();

      // for (var item in list) {
      //   Applicant applicant = Applicant.fromJson(item);
      //   listApplicant.add(applicant);
      // }
      // print(listApplicant);
    }
    return throw("looi");
  }


}
