// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayType _$PayTypeFromJson(Map<String, dynamic> json) {
  return PayType(
    status: json['status'] as bool,
    payTypeId: json['payTypeId'] as String,
    payTypeName: json['payTypeName'] as String,
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
  );
}

Map<String, dynamic> _$PayTypeToJson(PayType instance) => <String, dynamic>{
      'payTypeId': instance.payTypeId,
      'payTypeName': instance.payTypeName,
      'status': instance.status,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

ListPayType _$ListPayTypeFromJson(Map<String, dynamic> json) {
  return ListPayType(
    listPayType: (json['listPayType'] as List)
        ?.map((e) =>
            e == null ? null : PayType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListPayTypeToJson(ListPayType instance) =>
    <String, dynamic>{
      'listPayType': instance.listPayType,
    };
