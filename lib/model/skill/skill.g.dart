// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return Skill(
    status: json['status'] as bool,
    createdDate: json['createdDate'] as String,
    applicantSkill: (json['applicantSkill'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicantSkill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    skillId: json['skillId'] as String,
    skillName: json['skillName'] as String,
  );
}

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'skillId': instance.skillId,
      'skillName': instance.skillName,
      'createdDate': instance.createdDate,
      'status': instance.status,
      'applicantSkill': instance.applicantSkill,
    };
