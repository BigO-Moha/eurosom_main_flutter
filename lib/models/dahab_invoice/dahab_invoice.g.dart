// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dahab_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DahabInvoice _$DahabInvoiceFromJson(Map<String, dynamic> json) => DahabInvoice(
      invoiceId: json['InvoiceId'] as int?,
      statusCode: json['StatusCode'] as int?,
      requestId: json['RequestId'] as int?,
      statusDescription: json['StatusDescription'] as String?,
      validationErrors: json['ValidationErrors'],
    );

Map<String, dynamic> _$DahabInvoiceToJson(DahabInvoice instance) =>
    <String, dynamic>{
      'InvoiceId': instance.invoiceId,
      'StatusCode': instance.statusCode,
      'RequestId': instance.requestId,
      'StatusDescription': instance.statusDescription,
      'ValidationErrors': instance.validationErrors,
    };
