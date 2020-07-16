import 'package:json_annotation/json_annotation.dart';
import 'package:project06/model/applicant/applicant.dart';
import 'package:project06/model/skill/skill.dart';
part 'applicant_skill.g.dart';

@JsonSerializable()
class ApplicantSkill {
  String applicantId;
  Applicant applicant;
  String skillId;
  bool status;
  Skill skill;

  ApplicantSkill({
    this.skillId,
    this.status,
    this.applicantId,
    this.applicant,
    this.skill,
  });

  factory ApplicantSkill.fromJson(Map<String, dynamic> json) =>
      _$ApplicantSkillFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicantSkillToJson(this);
}

@JsonSerializable()
class ListApplicantSkill {
  List<ApplicantSkill> listSkill;
  ListApplicantSkill({this.listSkill});

  factory ListApplicantSkill.fromJson(List<dynamic> json) {
    return ListApplicantSkill(
        listSkill: json
            .map((e) => ApplicantSkill.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
