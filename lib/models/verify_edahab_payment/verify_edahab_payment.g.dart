// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_edahab_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyEdahabPayment _$VerifyEdahabPaymentFromJson(Map<String, dynamic> json) =>
    VerifyEdahabPayment(
      invoiceStatus: json['InvoiceStatus'] as String?,
      transactionId: json['TransactionId'],
      invoiceId: json['InvoiceId'] as int?,
      statusCode: json['StatusCode'] as int?,
      requestId: json['RequestId'] as int?,
      statusDescription: json['StatusDescription'] as String?,
      validationErrors: json['ValidationErrors'],
    );

Map<String, dynamic> _$VerifyEdahabPaymentToJson(
        VerifyEdahabPayment instance) =>
    <String, dynamic>{
      'InvoiceStatus': instance.invoiceStatus,
      'TransactionId': instance.transactionId,
      'InvoiceId': instance.invoiceId,
      'StatusCode': instance.statusCode,
      'RequestId': instance.requestId,
      'StatusDescription': instance.statusDescription,
      'ValidationErrors': instance.validationErrors,
    };
