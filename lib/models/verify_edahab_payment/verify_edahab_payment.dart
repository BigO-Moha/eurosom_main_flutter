import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_edahab_payment.g.dart';

@JsonSerializable()
class VerifyEdahabPayment {
  @JsonKey(name: 'InvoiceStatus')
  final String? invoiceStatus;
  @JsonKey(name: 'TransactionId')
  final dynamic transactionId;
  @JsonKey(name: 'InvoiceId')
  final int? invoiceId;
  @JsonKey(name: 'StatusCode')
  final int? statusCode;
  @JsonKey(name: 'RequestId')
  final int? requestId;
  @JsonKey(name: 'StatusDescription')
  final String? statusDescription;
  @JsonKey(name: 'ValidationErrors')
  final dynamic validationErrors;

  const VerifyEdahabPayment({
    this.invoiceStatus,
    this.transactionId,
    this.invoiceId,
    this.statusCode,
    this.requestId,
    this.statusDescription,
    this.validationErrors,
  });

  @override
  String toString() {
    return 'VerifyEdahabPayment(invoiceStatus: $invoiceStatus, transactionId: $transactionId, invoiceId: $invoiceId, statusCode: $statusCode, requestId: $requestId, statusDescription: $statusDescription, validationErrors: $validationErrors)';
  }

  factory VerifyEdahabPayment.fromJson(Map<String, dynamic> json) {
    return _$VerifyEdahabPaymentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyEdahabPaymentToJson(this);

  VerifyEdahabPayment copyWith({
    String? invoiceStatus,
    dynamic transactionId,
    int? invoiceId,
    int? statusCode,
    int? requestId,
    String? statusDescription,
    dynamic validationErrors,
  }) {
    return VerifyEdahabPayment(
      invoiceStatus: invoiceStatus ?? this.invoiceStatus,
      transactionId: transactionId ?? this.transactionId,
      invoiceId: invoiceId ?? this.invoiceId,
      statusCode: statusCode ?? this.statusCode,
      requestId: requestId ?? this.requestId,
      statusDescription: statusDescription ?? this.statusDescription,
      validationErrors: validationErrors ?? this.validationErrors,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! VerifyEdahabPayment) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      invoiceStatus.hashCode ^
      transactionId.hashCode ^
      invoiceId.hashCode ^
      statusCode.hashCode ^
      requestId.hashCode ^
      statusDescription.hashCode ^
      validationErrors.hashCode;
}
