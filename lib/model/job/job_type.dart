import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'job_type.g.dart';

@JsonSerializable()
class JobType {
  String jobTypeId;
  String jobTypeName;
  DateTime createdDate;
  bool status;

  JobType({
    @required this.createdDate,
    @required this.status,
    @required this.jobTypeId,
    @required this.jobTypeName,
  });

    factory JobType.fromJson(Map<String, dynamic> json) =>
      _$JobTypeFromJson(json);
  Map<String, dynamic> toJson() => _$JobTypeToJson(this);
}

@JsonSerializable()
class ListJobType {
  List<JobType> listType;
  ListJobType({this.listType});

  factory ListJobType.fromJson(List<dynamic> json) {
    return ListJobType(
        listType: json
            .map((e) => JobType.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
