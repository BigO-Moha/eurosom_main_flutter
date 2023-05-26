import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'configs.g.dart';

@JsonSerializable()
class Configs {
  final List<Datum>? data;
  final Meta? meta;

  const Configs({this.data, this.meta});

  @override
  String toString() => 'Configs(data: $data, meta: $meta)';

  factory Configs.fromJson(Map<String, dynamic> json) {
    return _$ConfigsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConfigsToJson(this);

  Configs copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return Configs(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Configs) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
