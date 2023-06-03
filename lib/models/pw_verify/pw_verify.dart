import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'response.dart';

part 'pw_verify.g.dart';

@JsonSerializable()
class PwVerify {
  @JsonKey(name: 'Response')
  final Response? response;
  @JsonKey(name: 'Data')
  final Data? data;

  const PwVerify({this.response, this.data});

  @override
  String toString() => 'PwVerify(response: $response, data: $data)';

  factory PwVerify.fromJson(Map<String, dynamic> json) {
    return _$PwVerifyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PwVerifyToJson(this);

  PwVerify copyWith({
    Response? response,
    Data? data,
  }) {
    return PwVerify(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PwVerify) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => response.hashCode ^ data.hashCode;
}
