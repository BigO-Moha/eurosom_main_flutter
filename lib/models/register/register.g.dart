// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
      email: json['email'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
      affliate: json['affliate'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'affliate': instance.affliate,
      'name': instance.name,
    };
