
import 'package:json_annotation/json_annotation.dart';
import 'package:project06/model/applicant/applicant_skill.dart';
part 'skill.g.dart';
@JsonSerializable()
class Skill {
  String skillId;
  String skillName;
  DateTime createdDate;
  bool status;
  List<ApplicantSkill> applicantSkill;


  Skill({
    this.status,
    this.createdDate,
    this.applicantSkill,
    this.skillId,
    this.skillName,
  });


  
   factory Skill.fromJson(Map<String, dynamic> json) =>
      _$SkillFromJson(json);
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}

@JsonSerializable()
class  ListSkill {
  List<Skill> listSkill;
  ListSkill({this.listSkill});

  factory ListSkill.fromJson(List<dynamic> json) {
    return ListSkill(
        listSkill: json
            .map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}



