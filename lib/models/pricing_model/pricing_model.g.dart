// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricingModel _$PricingModelFromJson(Map<String, dynamic> json) => PricingModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PricingModelToJson(PricingModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
