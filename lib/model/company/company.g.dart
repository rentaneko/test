// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company(
    createdDate: json['createdDate'] as String,
    status: json['status'] as bool,
    phone: json['phone'] as String,
    fcmKey: json['fcmKey'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String,
    address: json['address'] as String,
    companyId: json['companyId'] as String,
    companyName: json['companyName'] as String,
    taxIdentifyNumber: json['taxIdentifyNumber'] as String,
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'taxIdentifyNumber': instance.taxIdentifyNumber,
      'createdDate': instance.createdDate,
      'status': instance.status,
      'fcmKey': instance.fcmKey,
    };
