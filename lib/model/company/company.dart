import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';

@JsonSerializable()
class Company {
  final String companyId;
  final String companyName;
  final String address;
  final String email;
  final String phone;
  final String avatar;
  final String taxIdentifyNumber;
  final String createdDate;
  final bool status;
  final String fcmKey;

  Company({
    @required this.createdDate,
    @required this.status,
    @required this.phone,
    this.fcmKey,
    @required this.email,
    @required this.avatar,
    @required this.address,
    @required this.companyId,
    @required this.companyName,
    @required this.taxIdentifyNumber,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

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
