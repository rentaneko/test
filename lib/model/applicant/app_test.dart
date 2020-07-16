

import 'package:json_annotation/json_annotation.dart';
part 'app_test.g.dart';
@JsonSerializable()
class ApplicantCreateModel {
  String email;
  String phone;
  String fullname;
  String birthdate;
  bool gender;
  String address;
  String identifyCardNumber;
  ApplicantCreateModel({
    this.email,
    this.phone,
    this.fullname,
    this.birthdate,
    this.gender,
    this.address,
    this.identifyCardNumber,
  });

  factory ApplicantCreateModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicantCreateModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicantCreateModelToJson(this);
}
