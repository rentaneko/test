// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Applicant _$ApplicantFromJson(Map<String, dynamic> json) {
  return Applicant(
    address: json['address'] as String,
    applicantId: json['applicantId'] as String,
    avatar: json['avatar'] as String,
    birthdate: json['birthdate'] == null
        ? null
        : DateTime.parse(json['birthdate'] as String),
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
    email: json['email'] as String,
    fcmKey: json['fcmKey'] as String,
    fullname: json['fullname'] as String,
    gender: json['gender'] as bool,
    identifyCardNumber: json['identifyCardNumber'] as String,
    password: json['password'] as String,
    phone: json['phone'] as String,
    seflDescribe: json['seflDescribe'] as String,
    status: json['status'] as bool,
    applicantSkills: (json['applicantSkills'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicantSkill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jobRequest: (json['jobRequest'] as List)
        ?.map((e) =>
            e == null ? null : JobRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ApplicantToJson(Applicant instance) => <String, dynamic>{
      'applicantId': instance.applicantId,
      'password': instance.password,
      'email': instance.email,
      'phone': instance.phone,
      'fullname': instance.fullname,
      'birthdate': instance.birthdate?.toIso8601String(),
      'gender': instance.gender,
      'avatar': instance.avatar,
      'address': instance.address,
      'identifyCardNumber': instance.identifyCardNumber,
      'seflDescribe': instance.seflDescribe,
      'createdDate': instance.createdDate?.toIso8601String(),
      'status': instance.status,
      'fcmKey': instance.fcmKey,
      'applicantSkills': instance.applicantSkills,
      'jobRequest': instance.jobRequest,
    };

ListApplicant _$ListApplicantFromJson(Map<String, dynamic> json) {
  return ListApplicant(
    listApp: (json['listApp'] as List)
        ?.map((e) =>
            e == null ? null : Applicant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListApplicantToJson(ListApplicant instance) =>
    <String, dynamic>{
      'listApp': instance.listApp,
    };
