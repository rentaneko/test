// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantSkill _$ApplicantSkillFromJson(Map<String, dynamic> json) {
  return ApplicantSkill(
    json['applicantId'] as String,
    json['applicant'] == null
        ? null
        : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
    json['skillId'] as String,
    json['skill'] == null
        ? null
        : Skill.fromJson(json['skill'] as Map<String, dynamic>),
    json['status'] as bool,
  );
}

Map<String, dynamic> _$ApplicantSkillToJson(ApplicantSkill instance) =>
    <String, dynamic>{
      'applicantId': instance.applicantId,
      'applicant': instance.applicant,
      'skillId': instance.skillId,
      'skill': instance.skill,
      'status': instance.status,
    };
