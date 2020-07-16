import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project07/model/applicant/applicant_skill.dart';
import 'package:project07/model/job/job_request.dart';
part 'applicant.g.dart';

@JsonSerializable()
class Applicant {
  String applicantId;
  String email;
  String phone;
  String fullname;
  String birthdate;
  bool gender;
  String avatar;
  String address;
  String identifyCardNumber;
  String seflDescribe;
  String fcmKey;
  String createdDate;
  bool status;
  List<ApplicantSkill> applicantSkill;
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
    @required this.phone,
    this.seflDescribe,
    @required this.status,
    this.applicantSkill,
    this.jobRequest,
  });


  factory Applicant.fromJson(Map<String, dynamic> json) =>
      _$ApplicantFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicantToJson(this);
}

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
