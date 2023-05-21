// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Formats _$FormatsFromJson(Map<String, dynamic> json) => Formats(
      large: json['large'] == null
          ? null
          : Large.fromJson(json['large'] as Map<String, dynamic>),
      small: json['small'] == null
          ? null
          : Small.fromJson(json['small'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Medium.fromJson(json['medium'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FormatsToJson(Formats instance) => <String, dynamic>{
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
