// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return Job(
    status: json['status'] as bool,
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
    jobId: json['jobId'] as String,
    beginDate: json['beginDate'] == null
        ? null
        : DateTime.parse(json['beginDate'] as String),
    closeDate: json['closeDate'] == null
        ? null
        : DateTime.parse(json['closeDate'] as String),
    company: json['company'] == null
        ? null
        : Company.fromJson(json['company'] as Map<String, dynamic>),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    jobDescription: json['jobDescription'] as String,
    jobName: json['JobName'] as String,
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
    salary: (json['Salary'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'jobName': instance.jobName,
      'salary': instance.salary,
      'beginDate': instance.beginDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'jobDescription': instance.jobDescription,
      'closeDate': instance.closeDate?.toIso8601String(),
      'createdDate': instance.createdDate?.toIso8601String(),
      'status': instance.status,
      'company': instance.company,
      'jobType': instance.jobType,
      'payType': instance.payType,
      'jobRequest': instance.jobRequest,
    };

ListJob _$ListJobFromJson(Map<String, dynamic> json) {
  return ListJob(
    listJob: (json['listJob'] as List)
        ?.map((e) => e == null ? null : Job.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListJobToJson(ListJob instance) => <String, dynamic>{
      'listJob': instance.listJob,
    };
