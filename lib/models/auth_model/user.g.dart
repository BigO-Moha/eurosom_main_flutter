// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 2;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[1] as int?,
      username: fields[3] as String?,
      email: fields[4] as String?,
      provider: fields[5] as String?,
      confirmed: fields[6] as bool?,
      blocked: fields[7] as bool?,
      createdAt: fields[8] as DateTime?,
      updatedAt: fields[9] as DateTime?,
      phone: fields[10] as String?,
      name: fields[11] as String?,
      token_count: fields[12] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.provider)
      ..writeByte(6)
      ..write(obj.confirmed)
      ..writeByte(7)
      ..write(obj.blocked)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.phone)
      ..writeByte(11)
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.token_count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      token_count: json['token_count'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'phone': instance.phone,
      'name': instance.name,
      'token_count': instance.token_count,
    };
