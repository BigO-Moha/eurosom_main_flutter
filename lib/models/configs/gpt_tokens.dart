import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gpt_tokens.g.dart';

@JsonSerializable()
class GptTokens {
  final int? yearly;
  final int? monthly;

  const GptTokens({this.yearly, this.monthly});

  @override
  String toString() => 'GptTokens(yearly: $yearly, monthly: $monthly)';

  factory GptTokens.fromJson(Map<String, dynamic> json) {
    return _$GptTokensFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GptTokensToJson(this);

  GptTokens copyWith({
    int? yearly,
    int? monthly,
  }) {
    return GptTokens(
      yearly: yearly ?? this.yearly,
      monthly: monthly ?? this.monthly,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GptTokens) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => yearly.hashCode ^ monthly.hashCode;
}
