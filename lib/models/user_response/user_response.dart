import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final int? id;
  final String? username;
  final String? email;
  final String? provider;
  final bool? confirmed;
  final bool? blocked;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? phone;
  final String? name;
  @JsonKey(name: 'token_count')
  final int? tokenCount;

  const UserResponse({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.phone,
    this.name,
    this.tokenCount,
  });

  @override
  String toString() {
    return 'UserResponse(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, name: $name, tokenCount: $tokenCount)';
  }

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return _$UserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

  UserResponse copyWith({
    int? id,
    String? username,
    String? email,
    String? provider,
    bool? confirmed,
    bool? blocked,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? phone,
    String? name,
    int? tokenCount,
  }) {
    return UserResponse(
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
      tokenCount: tokenCount ?? this.tokenCount,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! UserResponse) return false;
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
      name.hashCode ^
      tokenCount.hashCode;
}
