import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pay_type.g.dart';

@JsonSerializable()
class PayType {
  final String payTypeId;
  final String payTypeName;
  final String createdDate;
  final bool status;

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
