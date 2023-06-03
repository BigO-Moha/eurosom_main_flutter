import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'p_wrequestbody.g.dart';

@JsonSerializable()
class PWrequestbody {
  @JsonKey(name: 'CustomerWalletID')
  final String? customerWalletId;
  @JsonKey(name: 'Amount')
  final String? amount;
  @JsonKey(name: 'Remarks')
  final String? remarks;
  @JsonKey(name: 'Category')
  final String? category;
  @JsonKey(name: 'LoginUserName')
  final String? loginUserName;

  const PWrequestbody({
    this.customerWalletId,
    this.amount,
    this.remarks,
    this.category,
    this.loginUserName,
  });

  @override
  String toString() {
    return 'PWrequestbody(customerWalletId: $customerWalletId, amount: $amount, remarks: $remarks, category: $category, loginUserName: $loginUserName)';
  }

  factory PWrequestbody.fromJson(Map<String, dynamic> json) {
    return _$PWrequestbodyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PWrequestbodyToJson(this);

  PWrequestbody copyWith({
    String? customerWalletId,
    String? amount,
    String? remarks,
    String? category,
    String? loginUserName,
  }) {
    return PWrequestbody(
      customerWalletId: customerWalletId ?? this.customerWalletId,
      amount: amount ?? this.amount,
      remarks: remarks ?? this.remarks,
      category: category ?? this.category,
      loginUserName: loginUserName ?? this.loginUserName,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PWrequestbody) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      customerWalletId.hashCode ^
      amount.hashCode ^
      remarks.hashCode ^
      category.hashCode ^
      loginUserName.hashCode;
}
