// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobType _$JobTypeFromJson(Map<String, dynamic> json) {
  return JobType(
    createdDate: json['createdDate'] as String,
    status: json['status'] as bool,
    jobTypeId: json['jobTypeId'] as String,
    jobTypeName: json['jobTypeName'] as String,
  );
}

Map<String, dynamic> _$JobTypeToJson(JobType instance) => <String, dynamic>{
      'jobTypeId': instance.jobTypeId,
      'jobTypeName': instance.jobTypeName,
      'createdDate': instance.createdDate,
      'status': instance.status,
    };
