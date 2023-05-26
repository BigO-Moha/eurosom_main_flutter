import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'subscription_model.g.dart';

@JsonSerializable()
class SubscriptionModel {
  final List<Datum>? data;
  final Meta? meta;

  const SubscriptionModel({this.data, this.meta});

  @override
  String toString() => 'SubscriptionModel(data: $data, meta: $meta)';

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
    return _$SubscriptionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubscriptionModelToJson(this);

  SubscriptionModel copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return SubscriptionModel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SubscriptionModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
