import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final int? user;
  final String? status;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  final double? amount;
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  final String? account;
  final String? app;
  @JsonKey(name: 'app_id')
  final int? appId;

  const Data({
    this.user,
    this.status,
    this.startDate,
    this.expiryDate,
    this.amount,
    this.paymentMethod,
    this.account,
    this.app,
    this.appId,
  });

  @override
  String toString() {
    return 'Data(user: $user, status: $status, startDate: $startDate, expiryDate: $expiryDate, amount: $amount, paymentMethod: $paymentMethod, account: $account, app: $app, appId: $appId)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? user,
    String? status,
    String? startDate,
    String? expiryDate,
    double? amount,
    String? paymentMethod,
    String? account,
    String? app,
    int? appId,
  }) {
    return Data(
      user: user ?? this.user,
      status: status ?? this.status,
      startDate: startDate ?? this.startDate,
      expiryDate: expiryDate ?? this.expiryDate,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      account: account ?? this.account,
      app: app ?? this.app,
      appId: appId ?? this.appId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Data) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      user.hashCode ^
      status.hashCode ^
      startDate.hashCode ^
      expiryDate.hashCode ^
      amount.hashCode ^
      paymentMethod.hashCode ^
      account.hashCode ^
      app.hashCode ^
      appId.hashCode;
}
