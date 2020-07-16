import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project07/model/job/job_request.dart';
import 'package:project07/model/job/job_type.dart';
import 'package:project07/model/payment/pay_type.dart';
part 'job.g.dart';

@JsonSerializable()
class Job {
  final String jobId;
  final String jobName;
  final double salary;
  final String beginDate;
  final String endDate;
  final String location;
  final String jobDescription;
  final String createdDate;
  final String closeDate;
  final bool status;
  final JobType jobType;
  final PayType payType;
  final List<JobRequest> jobRequest;

  Job({
    @required this.status,
    @required this.createdDate,
    @required this.jobId,
    @required this.beginDate,
    @required this.closeDate,
    this.location,
    this.endDate,
    this.jobDescription,
    @required this.jobName,
    this.jobRequest,
    this.jobType,
    this.payType,
    @required this.salary,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
  Map<String, dynamic> toJson() => _$JobToJson(this);
}

class ListJobs {
  List<Job> listJobs;
  ListJobs({this.listJobs});

  factory ListJobs.fromJson(List<dynamic> json) {
    return ListJobs(
      listJobs:
          json.map((e) => Job.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}
