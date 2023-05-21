import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginData {
  final String? identifier;
  final String? password;

  const LoginData({this.identifier, this.password});

  @override
  String toString() =>
      'LoginData(identifier: $identifier, password: $password)';

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);

  LoginData copyWith({
    String? identifier,
    String? password,
  }) {
    return LoginData(
      identifier: identifier ?? this.identifier,
      password: password ?? this.password,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LoginData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => identifier.hashCode ^ password.hashCode;
}
