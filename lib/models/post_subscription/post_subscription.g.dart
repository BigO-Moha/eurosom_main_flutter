// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSubscription _$PostSubscriptionFromJson(Map<String, dynamic> json) =>
    PostSubscription(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostSubscriptionToJson(PostSubscription instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
