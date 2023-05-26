import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gpt_tokens.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  final bool? active;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  @JsonKey(name: 'gpt_tokens')
  final GptTokens? gptTokens;
  final String? token;

  const Datum({
    this.id,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.gptTokens,
    this.token,
  });

  @override
  String toString() {
    return 'Datum(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, gptTokens: $gptTokens, token: $token)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    bool? active,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    GptTokens? gptTokens,
    String? token,
  }) {
    return Datum(
      id: id ?? this.id,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      gptTokens: gptTokens ?? this.gptTokens,
      token: token ?? this.token,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datum) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      active.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      publishedAt.hashCode ^
      gptTokens.hashCode ^
      token.hashCode;
}
