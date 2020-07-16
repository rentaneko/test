

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project06/model/company/company.dart';
import 'package:project06/model/job/job_request.dart';
import 'package:project06/model/job/job_type.dart';
import 'package:project06/model/payment/pay_type.dart';
part 'jobs.g.dart';

@JsonSerializable()
class Job {
  String jobId;
  String jobName;
  double salary;
  DateTime beginDate;
  DateTime endDate;
  String jobDescription;
  DateTime closeDate;
  DateTime createdDate;
  bool status;
  Company company;
  JobType jobType;
  PayType payType;
  List<JobRequest> jobRequest;

  Job({
    @required this.status,
    @required this.createdDate,
    @required this.jobId,
    @required this.beginDate,
    @required this.closeDate,
    this.company,
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

@JsonSerializable()
class ListJob {
  List<Job> listJob;
  ListJob({this.listJob});

  factory ListJob.fromJson(List<dynamic> json) {
    return ListJob(
        listJob: json
            .map((e) => Job.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
