// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company(
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
    status: json['status'] as bool,
    phone: json['phone'] as String,
    password: json['password'] as String,
    fcmKey: json['fcmKey'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String,
    address: json['address'] as String,
    companyId: json['companyId'] as String,
    companyName: json['companyName'] as String,
    taxIdentificationNumber: json['taxIdentificationNumber'] as String,
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'companyId': instance.companyId,
      'password': instance.password,
      'companyName': instance.companyName,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'taxIdentificationNumber': instance.taxIdentificationNumber,
      'createdDate': instance.createdDate?.toIso8601String(),
      'status': instance.status,
      'fcmKey': instance.fcmKey,
    };

ListCompany _$ListCompanyFromJson(Map<String, dynamic> json) {
  return ListCompany(
    listCompany: (json['listCompany'] as List)
        ?.map((e) =>
            e == null ? null : Company.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListCompanyToJson(ListCompany instance) =>
    <String, dynamic>{
      'listCompany': instance.listCompany,
    };
