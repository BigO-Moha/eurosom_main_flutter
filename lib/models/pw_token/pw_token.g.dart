// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pw_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PwToken _$PwTokenFromJson(Map<String, dynamic> json) => PwToken(
      response: json['Response'] == null
          ? null
          : Response.fromJson(json['Response'] as Map<String, dynamic>),
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PwTokenToJson(PwToken instance) => <String, dynamic>{
      'Response': instance.response,
      'Data': instance.data,
    };
