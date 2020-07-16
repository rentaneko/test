import 'package:json_annotation/json_annotation.dart';
import 'package:project07/model/applicant/applicant.dart';
import 'package:project07/model/skill/skill.dart';
part 'applicant_skill.g.dart';

@JsonSerializable()
class ApplicantSkill {
  final String applicantId;
  final Applicant applicant;
  final String skillId;
  final Skill skill;
  final bool status;

  ApplicantSkill(
      this.applicantId, this.applicant, this.skillId, this.skill, this.status);

  factory ApplicantSkill.fromJson(Map<String, dynamic> json) =>
      _$ApplicantSkillFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicantSkillToJson(this);
}

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
