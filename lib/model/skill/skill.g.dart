// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return Skill(
    status: json['status'] as bool,
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
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
      'createdDate': instance.createdDate?.toIso8601String(),
      'status': instance.status,
      'applicantSkill': instance.applicantSkill,
    };

ListSkill _$ListSkillFromJson(Map<String, dynamic> json) {
  return ListSkill(
    listSkill: (json['listSkill'] as List)
        ?.map(
            (e) => e == null ? null : Skill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListSkillToJson(ListSkill instance) => <String, dynamic>{
      'listSkill': instance.listSkill,
    };
