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
    createdDate: json['createdDate'] as String,
  );
}

Map<String, dynamic> _$PayTypeToJson(PayType instance) => <String, dynamic>{
      'payTypeId': instance.payTypeId,
      'payTypeName': instance.payTypeName,
      'createdDate': instance.createdDate,
      'status': instance.status,
    };
