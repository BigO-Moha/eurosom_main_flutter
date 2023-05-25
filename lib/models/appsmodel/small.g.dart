// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'small.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Small _$SmallFromJson(Map<String, dynamic> json) => Small(
      ext: json['ext'] as String?,
      url: json['url'] as String?,
      hash: json['hash'] as String?,
      mime: json['mime'] as String?,
      name: json['name'] as String?,
      path: json['path'],
      size: (json['size'] as num?)?.toDouble(),
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$SmallToJson(Small instance) => <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };
