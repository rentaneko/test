import 'package:json_annotation/json_annotation.dart';
import 'package:project06/model/applicant/applicant_skill.dart';
import 'package:flutter/material.dart';
import 'package:project06/model/job/job_request.dart';
part 'applicant.g.dart';

@JsonSerializable()
class Applicant {
  String applicantId;
  String password;
  String email;
  String phone;
  String fullname;
  DateTime birthdate;
  bool gender;
  String avatar;
  String address;
  String identifyCardNumber;
  String seflDescribe;
  DateTime createdDate;
  bool status;
  String fcmKey;
  List<ApplicantSkill> applicantSkills;
  List<JobRequest> jobRequest;

  Applicant({
    @required this.address,
    @required this.applicantId,
    this.avatar,
    @required this.birthdate,
    @required this.createdDate,
    @required this.email,
    this.fcmKey,
    @required this.fullname,
    @required this.gender,
    @required this.identifyCardNumber,
    @required this.password,
    @required this.phone,
    this.seflDescribe,
    @required this.status,
    this.applicantSkills,
    this.jobRequest,
  });

  factory Applicant.fromJson(Map<String, dynamic> json) =>
      _$ApplicantFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicantToJson(this);
}

@JsonSerializable()
class ListApplicant {
  List<Applicant> listApp;
  ListApplicant({this.listApp});

  factory ListApplicant.fromJson(List<dynamic> json) {
    return ListApplicant(
        listApp: json
            .map((e) => Applicant.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
