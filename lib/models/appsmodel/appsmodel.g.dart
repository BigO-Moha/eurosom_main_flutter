// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appsmodel _$AppsmodelFromJson(Map<String, dynamic> json) => Appsmodel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppsmodelToJson(Appsmodel instance) => <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
