// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sliders _$SlidersFromJson(Map<String, dynamic> json) => Sliders(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SlidersToJson(Sliders instance) => <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
