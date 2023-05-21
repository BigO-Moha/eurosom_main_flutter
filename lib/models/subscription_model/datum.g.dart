// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      status: json['status'] as String?,
      startDate: json['start_date'] as String?,
      expiryDate: json['expiry_date'] as String?,
      amount: json['amount'] as int?,
      paymentMethod: json['payment_method'] as String?,
      account: json['account'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      appId: json['app_id'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'start_date': instance.startDate,
      'expiry_date': instance.expiryDate,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'account': instance.account,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'app_id': instance.appId,
    };
