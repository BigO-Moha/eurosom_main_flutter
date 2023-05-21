// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'large.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Large _$LargeFromJson(Map<String, dynamic> json) => Large(
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

Map<String, dynamic> _$LargeToJson(Large instance) => <String, dynamic>{
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
