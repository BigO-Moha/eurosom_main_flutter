// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p_wrequest_money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PWrequestMoney _$PWrequestMoneyFromJson(Map<String, dynamic> json) =>
    PWrequestMoney(
      response: json['Response'] == null
          ? null
          : Response.fromJson(json['Response'] as Map<String, dynamic>),
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PWrequestMoneyToJson(PWrequestMoney instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'Data': instance.data,
    };
