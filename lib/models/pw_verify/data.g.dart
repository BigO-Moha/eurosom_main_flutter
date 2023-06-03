// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      transactionId: json['TransactionId'] as String?,
      transactionDate: json['TransactionDate'] as int?,
      amount: (json['Amount'] as num?)?.toDouble(),
      description: json['Description'] as String?,
      customerWalletId: json['CustomerWalletID'] as String?,
      customerName: json['CustomerName'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'TransactionId': instance.transactionId,
      'TransactionDate': instance.transactionDate,
      'Amount': instance.amount,
      'Description': instance.description,
      'CustomerWalletID': instance.customerWalletId,
      'CustomerName': instance.customerName,
      'Status': instance.status,
    };
