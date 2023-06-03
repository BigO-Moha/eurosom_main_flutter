// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      code: json['Code'] as String?,
      messages: json['Messages'] as String?,
      errors: json['Errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'Code': instance.code,
      'Messages': instance.messages,
      'Errors': instance.errors,
    };
