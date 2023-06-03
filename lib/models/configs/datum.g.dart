// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      active: json['active'] as bool?,
      gptTokens: json['gpt_tokens'] == null
          ? null
          : GptTokens.fromJson(json['gpt_tokens'] as Map<String, dynamic>),
      token: json['token'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      edahabToken: json['edahab_token'],
      evcToken: json['evc_token'] as String?,
      evcMarchantId: json['evc_marchant_id'] as String?,
      stripeToken: json['stripe_token'] as String?,
      pwConfig: json['pw_config'] == null
          ? null
          : PwConfig.fromJson(json['pw_config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'gpt_tokens': instance.gptTokens,
      'token': instance.token,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'edahab_token': instance.edahabToken,
      'evc_token': instance.evcToken,
      'evc_marchant_id': instance.evcMarchantId,
      'stripe_token': instance.stripeToken,
      'pw_config': instance.pwConfig,
    };
