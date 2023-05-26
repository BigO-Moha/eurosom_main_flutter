import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
@HiveType(
  typeId: 2,
)
class User {
  @HiveField(1)
  @HiveField(2)
  final int? id;
  @HiveField(3)
  final String? username;
  @HiveField(4)
  final String? email;
  @HiveField(5)
  final String? provider;
  @HiveField(6)
  final bool? confirmed;
  @HiveField(7)
  final bool? blocked;
  @HiveField(8)
  final DateTime? createdAt;
  @HiveField(9)
  final DateTime? updatedAt;
  @HiveField(10)
  final String? phone;
  @HiveField(11)
  final String? name;
  @HiveField(12)
  final int? token_count;

  const User(
      {this.id,
      this.username,
      this.email,
      this.provider,
      this.confirmed,
      this.blocked,
      this.createdAt,
      this.updatedAt,
      this.phone,
      this.name,
      this.token_count});

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, name: $name)';
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? id,
    String? username,
    String? email,
    String? provider,
    bool? confirmed,
    bool? blocked,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? phone,
    int? token_count,
    String? name,
  }) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        provider: provider ?? this.provider,
        confirmed: confirmed ?? this.confirmed,
        blocked: blocked ?? this.blocked,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        phone: phone ?? this.phone,
        name: name ?? this.name,
        token_count: token_count ?? this.token_count);
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! User) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      username.hashCode ^
      email.hashCode ^
      provider.hashCode ^
      confirmed.hashCode ^
      blocked.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      phone.hashCode ^
      token_count.hashCode ^
      name.hashCode;
}
