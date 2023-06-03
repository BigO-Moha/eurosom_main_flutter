import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gpt_tokens.dart';
import 'pw_config.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  final bool? active;
  @JsonKey(name: 'gpt_tokens')
  final GptTokens? gptTokens;
  final String? token;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  @JsonKey(name: 'edahab_token')
  final dynamic edahabToken;
  @JsonKey(name: 'evc_token')
  final String? evcToken;
  @JsonKey(name: 'evc_marchant_id')
  final String? evcMarchantId;
  @JsonKey(name: 'stripe_token')
  final String? stripeToken;
  @JsonKey(name: 'pw_config')
  final PwConfig? pwConfig;

  const Datum({
    this.id,
    this.active,
    this.gptTokens,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.edahabToken,
    this.evcToken,
    this.evcMarchantId,
    this.stripeToken,
    this.pwConfig,
  });

  @override
  String toString() {
    return 'Datum(id: $id, active: $active, gptTokens: $gptTokens, token: $token, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, edahabToken: $edahabToken, evcToken: $evcToken, evcMarchantId: $evcMarchantId, stripeToken: $stripeToken, pwConfig: $pwConfig)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    bool? active,
    GptTokens? gptTokens,
    String? token,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    dynamic edahabToken,
    String? evcToken,
    String? evcMarchantId,
    String? stripeToken,
    PwConfig? pwConfig,
  }) {
    return Datum(
      id: id ?? this.id,
      active: active ?? this.active,
      gptTokens: gptTokens ?? this.gptTokens,
      token: token ?? this.token,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      edahabToken: edahabToken ?? this.edahabToken,
      evcToken: evcToken ?? this.evcToken,
      evcMarchantId: evcMarchantId ?? this.evcMarchantId,
      stripeToken: stripeToken ?? this.stripeToken,
      pwConfig: pwConfig ?? this.pwConfig,
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
      gptTokens.hashCode ^
      token.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      publishedAt.hashCode ^
      edahabToken.hashCode ^
      evcToken.hashCode ^
      evcMarchantId.hashCode ^
      stripeToken.hashCode ^
      pwConfig.hashCode;
}
