
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project07/model/applicant/applicant.dart';
import 'package:project07/model/job/job.dart';
part 'job_request.g.dart';

@JsonSerializable()
class JobRequest {
  final String jobId;
  final Job job;
  final String applicantId;
  final Applicant applicant;
  final String createdDate;
  final bool status;
  final bool isAccept;

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
