import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'application.dart';
import 'owner.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  @JsonKey(name: 'affliate_percent')
  final int? affliatePercent;
  final int? balance;
  @JsonKey(name: 'total_affliates')
  final dynamic totalAffliates;
  @JsonKey(name: 'max_withdraw')
  final String? maxWithdraw;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  final Owner? owner;
  final Application? application;

  const Datum({
    this.id,
    this.affliatePercent,
    this.balance,
    this.totalAffliates,
    this.maxWithdraw,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.owner,
    this.application,
  });

  @override
  String toString() {
    return 'Datum(id: $id, affliatePercent: $affliatePercent, balance: $balance, totalAffliates: $totalAffliates, maxWithdraw: $maxWithdraw, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, owner: $owner, application: $application)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    int? affliatePercent,
    int? balance,
    dynamic totalAffliates,
    String? maxWithdraw,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    Owner? owner,
    Application? application,
  }) {
    return Datum(
      id: id ?? this.id,
      affliatePercent: affliatePercent ?? this.affliatePercent,
      balance: balance ?? this.balance,
      totalAffliates: totalAffliates ?? this.totalAffliates,
      maxWithdraw: maxWithdraw ?? this.maxWithdraw,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      owner: owner ?? this.owner,
      application: application ?? this.application,
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
      affliatePercent.hashCode ^
      balance.hashCode ^
      totalAffliates.hashCode ^
      maxWithdraw.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      publishedAt.hashCode ^
      owner.hashCode ^
      application.hashCode;
}
