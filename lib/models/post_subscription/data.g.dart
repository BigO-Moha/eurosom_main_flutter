// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      user: json['user'] as int?,
      status: json['status'] as String?,
      startDate: json['start_date'] as String?,
      expiryDate: json['expiry_date'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      paymentMethod: json['payment_method'] as String?,
      account: json['account'] as String?,
      app: json['app'] as String?,
      appId: json['app_id'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user': instance.user,
      'status': instance.status,
      'start_date': instance.startDate,
      'expiry_date': instance.expiryDate,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'account': instance.account,
      'app': instance.app,
      'app_id': instance.appId,
    };
