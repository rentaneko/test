// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantCreateModel _$ApplicantCreateModelFromJson(Map<String, dynamic> json) {
  return ApplicantCreateModel(
    email: json['email'] as String,
    phone: json['phone'] as String,
    fullname: json['fullname'] as String,
    birthdate: json['birthdate'] as String,
    gender: json['gender'] as bool,
    address: json['address'] as String,
    identifyCardNumber: json['identifyCardNumber'] as String,
  );
}

Map<String, dynamic> _$ApplicantCreateModelToJson(
        ApplicantCreateModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'fullname': instance.fullname,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'address': instance.address,
      'identifyCardNumber': instance.identifyCardNumber,
    };
