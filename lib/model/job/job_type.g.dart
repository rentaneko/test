// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobType _$JobTypeFromJson(Map<String, dynamic> json) {
  return JobType(
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
    status: json['status'] as bool,
    jobTypeId: json['jobTypeId'] as String,
    jobTypeName: json['jobTypeName'] as String,
  );
}

Map<String, dynamic> _$JobTypeToJson(JobType instance) => <String, dynamic>{
      'jobTypeId': instance.jobTypeId,
      'jobTypeName': instance.jobTypeName,
      'createdDate': instance.createdDate?.toIso8601String(),
      'status': instance.status,
    };

ListJobType _$ListJobTypeFromJson(Map<String, dynamic> json) {
  return ListJobType(
    listType: (json['listType'] as List)
        ?.map((e) =>
            e == null ? null : JobType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListJobTypeToJson(ListJobType instance) =>
    <String, dynamic>{
      'listType': instance.listType,
    };
