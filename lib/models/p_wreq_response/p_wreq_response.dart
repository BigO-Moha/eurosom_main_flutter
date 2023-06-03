import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'response.dart';

part 'p_wreq_response.g.dart';

@JsonSerializable()
class PWreqResponse {
  @JsonKey(name: 'Response')
  final Response? response;
  @JsonKey(name: 'Data')
  final Data? data;

  const PWreqResponse({this.response, this.data});

  @override
  String toString() => 'PWreqResponse(response: $response, data: $data)';

  factory PWreqResponse.fromJson(Map<String, dynamic> json) {
    return _$PWreqResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PWreqResponseToJson(this);

  PWreqResponse copyWith({
    Response? response,
    Data? data,
  }) {
    return PWreqResponse(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PWreqResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => response.hashCode ^ data.hashCode;
}
