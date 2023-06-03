import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'TransactionID')
  final String? transactionId;

  const Data({this.transactionId});

  @override
  String toString() => 'Data(transactionId: $transactionId)';

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? transactionId,
  }) {
    return Data(
      transactionId: transactionId ?? this.transactionId,
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
  int get hashCode => transactionId.hashCode;
}
