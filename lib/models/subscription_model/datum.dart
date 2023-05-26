import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'app.dart';
import 'user.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  final String? status;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  final double? amount;
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  final String? account;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'app_id')
  final int? appId;
  final App? app;
  final User? user;

  const Datum({
    this.id,
    this.status,
    this.startDate,
    this.expiryDate,
    this.amount,
    this.paymentMethod,
    this.account,
    this.createdAt,
    this.updatedAt,
    this.appId,
    this.app,
    this.user,
  });

  @override
  String toString() {
    return 'Datum(id: $id, status: $status, startDate: $startDate, expiryDate: $expiryDate, amount: $amount, paymentMethod: $paymentMethod, account: $account, createdAt: $createdAt, updatedAt: $updatedAt, appId: $appId, app: $app, user: $user)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    String? status,
    String? startDate,
    String? expiryDate,
    double? amount,
    String? paymentMethod,
    String? account,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? appId,
    App? app,
    User? user,
  }) {
    return Datum(
      id: id ?? this.id,
      status: status ?? this.status,
      startDate: startDate ?? this.startDate,
      expiryDate: expiryDate ?? this.expiryDate,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      account: account ?? this.account,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      appId: appId ?? this.appId,
      app: app ?? this.app,
      user: user ?? this.user,
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
      status.hashCode ^
      startDate.hashCode ^
      expiryDate.hashCode ^
      amount.hashCode ^
      paymentMethod.hashCode ^
      account.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      appId.hashCode ^
      app.hashCode ^
      user.hashCode;
}
