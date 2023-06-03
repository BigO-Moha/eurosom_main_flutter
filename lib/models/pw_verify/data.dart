import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'TransactionId')
  final String? transactionId;
  @JsonKey(name: 'TransactionDate')
  final int? transactionDate;
  @JsonKey(name: 'Amount')
  final double? amount;
  @JsonKey(name: 'Description')
  final String? description;
  @JsonKey(name: 'CustomerWalletID')
  final String? customerWalletId;
  @JsonKey(name: 'CustomerName')
  final String? customerName;
  @JsonKey(name: 'Status')
  final String? status;

  const Data({
    this.transactionId,
    this.transactionDate,
    this.amount,
    this.description,
    this.customerWalletId,
    this.customerName,
    this.status,
  });

  @override
  String toString() {
    return 'Data(transactionId: $transactionId, transactionDate: $transactionDate, amount: $amount, description: $description, customerWalletId: $customerWalletId, customerName: $customerName, status: $status)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? transactionId,
    int? transactionDate,
    double? amount,
    String? description,
    String? customerWalletId,
    String? customerName,
    String? status,
  }) {
    return Data(
      transactionId: transactionId ?? this.transactionId,
      transactionDate: transactionDate ?? this.transactionDate,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      customerWalletId: customerWalletId ?? this.customerWalletId,
      customerName: customerName ?? this.customerName,
      status: status ?? this.status,
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
      transactionId.hashCode ^
      transactionDate.hashCode ^
      amount.hashCode ^
      description.hashCode ^
      customerWalletId.hashCode ^
      customerName.hashCode ^
      status.hashCode;
}
