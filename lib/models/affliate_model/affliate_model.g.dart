// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affliate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AffliateModel _$AffliateModelFromJson(Map<String, dynamic> json) =>
    AffliateModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AffliateModelToJson(AffliateModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
