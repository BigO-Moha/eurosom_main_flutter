import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'pricing_model.g.dart';

@JsonSerializable()
class PricingModel {
  final List<Datum>? data;
  final Meta? meta;

  const PricingModel({this.data, this.meta});

  @override
  String toString() => 'PricingModel(data: $data, meta: $meta)';

  factory PricingModel.fromJson(Map<String, dynamic> json) {
    return _$PricingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PricingModelToJson(this);

  PricingModel copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return PricingModel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PricingModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
