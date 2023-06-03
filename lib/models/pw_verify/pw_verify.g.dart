// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pw_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PwVerify _$PwVerifyFromJson(Map<String, dynamic> json) => PwVerify(
      response: json['Response'] == null
          ? null
          : Response.fromJson(json['Response'] as Map<String, dynamic>),
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PwVerifyToJson(PwVerify instance) => <String, dynamic>{
      'Response': instance.response,
      'Data': instance.data,
    };
