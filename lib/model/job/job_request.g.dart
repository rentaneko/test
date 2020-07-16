// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobRequest _$JobRequestFromJson(Map<String, dynamic> json) {
  return JobRequest(
    applicantId: json['applicantId'] as String,
    status: json['status'] as bool,
    createdDate: json['createdDate'] as String,
    applicant: json['applicant'] == null
        ? null
        : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
    isAccept: json['isAccept'] as bool,
    job: json['job'] == null
        ? null
        : Job.fromJson(json['job'] as Map<String, dynamic>),
    jobId: json['jobId'] as String,
  );
}

Map<String, dynamic> _$JobRequestToJson(JobRequest instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'job': instance.job,
      'applicantId': instance.applicantId,
      'applicant': instance.applicant,
      'createdDate': instance.createdDate,
      'status': instance.status,
      'isAccept': instance.isAccept,
    };
