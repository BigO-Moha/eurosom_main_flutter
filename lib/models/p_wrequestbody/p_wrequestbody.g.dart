// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p_wrequestbody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PWrequestbody _$PWrequestbodyFromJson(Map<String, dynamic> json) =>
    PWrequestbody(
      customerWalletId: json['CustomerWalletID'] as String?,
      amount: json['Amount'] as String?,
      remarks: json['Remarks'] as String?,
      category: json['Category'] as String?,
      loginUserName: json['LoginUserName'] as String?,
    );

Map<String, dynamic> _$PWrequestbodyToJson(PWrequestbody instance) =>
    <String, dynamic>{
      'CustomerWalletID': instance.customerWalletId,
      'Amount': instance.amount,
      'Remarks': instance.remarks,
      'Category': instance.category,
      'LoginUserName': instance.loginUserName,
    };
