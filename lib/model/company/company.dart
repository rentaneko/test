import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';

@JsonSerializable()
class Company {
  String companyId;
  String password;
  String companyName;
  String address;
  String email;
  String phone;
  String avatar;
  String taxIdentificationNumber;
  DateTime createdDate;
  bool status;
  String fcmKey;
  Company({
    @required this.createdDate,
    @required this.status,
    @required this.phone,
    @required this.password,
    this.fcmKey,
    @required this.email,
    @required this.avatar,
    @required this.address,
    @required this.companyId,
    @required this.companyName,
    @required this.taxIdentificationNumber,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class ListCompany {
  List<Company> listCompany;
  ListCompany({this.listCompany});
  factory ListCompany.fromJson(List<dynamic> json) {
    return ListCompany(
        listCompany: json
            .map((e) => Company.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
