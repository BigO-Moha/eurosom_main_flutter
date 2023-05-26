import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'auth_model.g.dart';

@JsonSerializable()
@HiveType(
  typeId: 1,
)
class AuthModel {
  @HiveField(0)
  final String? jwt;
  @HiveField(1)
  final User? user;

  const AuthModel({this.jwt, this.user});

  @override
  String toString() => 'AuthModel(jwt: $jwt, user: $user)';

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return _$AuthModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  AuthModel copyWith({
    String? jwt,
    User? user,
  }) {
    return AuthModel(
      jwt: jwt ?? this.jwt,
      user: user ?? this.user,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AuthModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => jwt.hashCode ^ user.hashCode;
}
