import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project06/model/applicant/applicant.dart';
import 'package:project06/model/job/jobs.dart';
part 'job_request.g.dart';

@JsonSerializable()
class JobRequest {
  String jobId;
  Job job;
  String applicantId;
  Applicant applicant;
  DateTime createdDate;
  bool status;
  bool isAccept;

  JobRequest({
    @required this.applicantId,
    @required this.status,
    @required this.createdDate,
    this.applicant,
    @required this.isAccept,
    @required this.job,
    @required this.jobId,
  });

  factory JobRequest.fromJson(Map<String, dynamic> json) =>
      _$JobRequestFromJson(json);
  Map<String, dynamic> toJson() => _$JobRequestToJson(this);
}

@JsonSerializable()
class JobRequestList {
  List<JobRequest> listJobRequest;
  JobRequestList({this.listJobRequest});

  factory JobRequestList.fromJson(List<dynamic> json) {
    return JobRequestList(
        listJobRequest: json
            .map((e) => JobRequest.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
