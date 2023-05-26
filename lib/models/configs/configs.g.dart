// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configs _$ConfigsFromJson(Map<String, dynamic> json) => Configs(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfigsToJson(Configs instance) => <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
