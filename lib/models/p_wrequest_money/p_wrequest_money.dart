import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'response.dart';

part 'p_wrequest_money.g.dart';

@JsonSerializable()
class PWrequestMoney {
  @JsonKey(name: 'Response')
  final Response? response;
  @JsonKey(name: 'Data')
  final Data? data;

  const PWrequestMoney({this.response, this.data});

  @override
  String toString() => 'PWrequestMoney(response: $response, data: $data)';

  factory PWrequestMoney.fromJson(Map<String, dynamic> json) {
    return _$PWrequestMoneyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PWrequestMoneyToJson(this);

  PWrequestMoney copyWith({
    Response? response,
    Data? data,
  }) {
    return PWrequestMoney(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PWrequestMoney) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => response.hashCode ^ data.hashCode;
}
