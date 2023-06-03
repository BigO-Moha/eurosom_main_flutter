import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'response.dart';

part 'pw_token.g.dart';

@JsonSerializable()
class PwToken {
  @JsonKey(name: 'Response')
  final Response? response;
  @JsonKey(name: 'Data')
  final Data? data;

  const PwToken({this.response, this.data});

  @override
  String toString() => 'PwToken(response: $response, data: $data)';

  factory PwToken.fromJson(Map<String, dynamic> json) {
    return _$PwTokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PwTokenToJson(this);

  PwToken copyWith({
    Response? response,
    Data? data,
  }) {
    return PwToken(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PwToken) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => response.hashCode ^ data.hashCode;
}
