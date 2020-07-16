import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pay_type.g.dart';

@JsonSerializable()
class PayType {
  String payTypeId;
  String payTypeName;
  bool status;
  DateTime createdDate;

  PayType({
    @required this.status,
    @required this.payTypeId,
    @required this.payTypeName,
    @required this.createdDate,
  });

  factory PayType.fromJson(Map<String, dynamic> json) =>
      _$PayTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PayTypeToJson(this);
}

@JsonSerializable()
class ListPayType {

  List<PayType> listPayType;
  ListPayType({this.listPayType});

  factory ListPayType.fromJson(List<dynamic> json) {
    return ListPayType(
        listPayType: json
            .map((e) => PayType.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
