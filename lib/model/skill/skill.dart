import 'package:json_annotation/json_annotation.dart';
import 'package:project07/model/applicant/applicant_skill.dart';
part 'skill.g.dart';

@JsonSerializable()
class Skill {
  final String skillId;
  final String skillName;
  final String createdDate;
  final bool status;
  final List<ApplicantSkill> applicantSkill;

  Skill({
    this.status,
    this.createdDate,
    this.applicantSkill,
    this.skillId,
    this.skillName,
  });

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}

class  ListSkill {
  List<Skill> listSkills;
  ListSkill({this.listSkills});

  factory ListSkill.fromJson(List<dynamic> json) {
    return ListSkill(
        listSkills: json
            .map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
