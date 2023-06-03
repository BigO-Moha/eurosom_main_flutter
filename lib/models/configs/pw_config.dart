import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pw_config.g.dart';

@JsonSerializable()
class PwConfig {
  final String? pass;
  final String? user;

  const PwConfig({this.pass, this.user});

  @override
  String toString() => 'PwConfig(pass: $pass, user: $user)';

  factory PwConfig.fromJson(Map<String, dynamic> json) {
    return _$PwConfigFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PwConfigToJson(this);

  PwConfig copyWith({
    String? pass,
    String? user,
  }) {
    return PwConfig(
      pass: pass ?? this.pass,
      user: user ?? this.user,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PwConfig) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => pass.hashCode ^ user.hashCode;
}
