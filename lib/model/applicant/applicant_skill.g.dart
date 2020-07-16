// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantSkill _$ApplicantSkillFromJson(Map<String, dynamic> json) {
  return ApplicantSkill(
    skillId: json['skillId'] as String,
    status: json['status'] as bool,
    applicantId: json['applicantId'] as String,
    applicant: json['applicant'] == null
        ? null
        : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
    skill: json['skill'] == null
        ? null
        : Skill.fromJson(json['skill'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApplicantSkillToJson(ApplicantSkill instance) =>
    <String, dynamic>{
      'applicantId': instance.applicantId,
      'applicant': instance.applicant,
      'skillId': instance.skillId,
      'status': instance.status,
      'skill': instance.skill,
    };

ListApplicantSkill _$ListApplicantSkillFromJson(Map<String, dynamic> json) {
  return ListApplicantSkill(
    listSkill: (json['listSkill'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicantSkill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListApplicantSkillToJson(ListApplicantSkill instance) =>
    <String, dynamic>{
      'listSkill': instance.listSkill,
    };
