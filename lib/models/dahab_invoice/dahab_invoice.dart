import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dahab_invoice.g.dart';

@JsonSerializable()
class DahabInvoice {
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

  const DahabInvoice({
    this.invoiceId,
    this.statusCode,
    this.requestId,
    this.statusDescription,
    this.validationErrors,
  });

  @override
  String toString() {
    return 'DahabInvoice(invoiceId: $invoiceId, statusCode: $statusCode, requestId: $requestId, statusDescription: $statusDescription, validationErrors: $validationErrors)';
  }

  factory DahabInvoice.fromJson(Map<String, dynamic> json) {
    return _$DahabInvoiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DahabInvoiceToJson(this);

  DahabInvoice copyWith({
    int? invoiceId,
    int? statusCode,
    int? requestId,
    String? statusDescription,
    dynamic validationErrors,
  }) {
    return DahabInvoice(
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
    if (other is! DahabInvoice) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      invoiceId.hashCode ^
      statusCode.hashCode ^
      requestId.hashCode ^
      statusDescription.hashCode ^
      validationErrors.hashCode;
}
