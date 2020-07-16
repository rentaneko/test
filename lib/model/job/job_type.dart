import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'job_type.g.dart';

@JsonSerializable()
class JobType {
  final String jobTypeId;
  final String jobTypeName;
  final String createdDate;
  final bool status;

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

class ListJobType {
  List<JobType> listJobType;
  ListJobType({this.listJobType});

  factory ListJobType.fromJson(List<dynamic> json) {
    return ListJobType(
        listJobType: json
            .map((e) => JobType.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
