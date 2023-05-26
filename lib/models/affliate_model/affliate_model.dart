import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'affliate_model.g.dart';

@JsonSerializable()
class AffliateModel {
  final List<Datum>? data;
  final Meta? meta;

  const AffliateModel({this.data, this.meta});

  @override
  String toString() => 'AffliateModel(data: $data, meta: $meta)';

  factory AffliateModel.fromJson(Map<String, dynamic> json) {
    return _$AffliateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AffliateModelToJson(this);

  AffliateModel copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return AffliateModel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AffliateModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
