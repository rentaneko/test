// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return Job(
    status: json['status'] as bool,
    createdDate: json['createdDate'] as String,
    jobId: json['jobId'] as String,
    beginDate: json['beginDate'] as String,
    closeDate: json['closeDate'] as String,
    location: json['location'] as String,
    endDate: json['endDate'] as String,
    jobDescription: json['jobDescription'] as String,
    jobName: json['jobName'] as String,
    jobRequest: (json['jobRequest'] as List)
        ?.map((e) =>
            e == null ? null : JobRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jobType: json['jobType'] == null
        ? null
        : JobType.fromJson(json['jobType'] as Map<String, dynamic>),
    payType: json['payType'] == null
        ? null
        : PayType.fromJson(json['payType'] as Map<String, dynamic>),
    salary: (json['salary'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'salary': instance.salary,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'location': instance.location,
      'jobDescription': instance.jobDescription,
      'createdDate': instance.createdDate,
      'closeDate': instance.closeDate,
      'status': instance.status,
      'jobType': instance.jobType,
      'payType': instance.payType,
      'jobRequest': instance.jobRequest,
    };
