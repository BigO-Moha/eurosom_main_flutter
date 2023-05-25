import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class RegisterData {
  final String? email;
  final String? password;
  final String? username;
  final int? affliate;
  final String? name;

  const RegisterData({
    this.email,
    this.password,
    this.username,
    this.affliate,
    this.name,
  });

  @override
  String toString() {
    return 'RegisterData(email: $email, password: $password, username: $username, affliate: $affliate, name: $name)';
  }

  factory RegisterData.fromJson(Map<String, dynamic> json) {
    return _$RegisterDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);

  RegisterData copyWith({
    String? email,
    String? password,
    String? username,
    int? affliate,
    String? name,
  }) {
    return RegisterData(
      email: email ?? this.email,
      password: password ?? this.password,
      username: username ?? this.username,
      affliate: affliate ?? this.affliate,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! RegisterData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      email.hashCode ^
      password.hashCode ^
      username.hashCode ^
      affliate.hashCode ^
      name.hashCode;
}
