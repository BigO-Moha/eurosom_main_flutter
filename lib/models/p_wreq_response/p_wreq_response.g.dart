// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p_wreq_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PWreqResponse _$PWreqResponseFromJson(Map<String, dynamic> json) =>
    PWreqResponse(
      response: json['Response'] == null
          ? null
          : Response.fromJson(json['Response'] as Map<String, dynamic>),
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PWreqResponseToJson(PWreqResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'Data': instance.data,
    };
