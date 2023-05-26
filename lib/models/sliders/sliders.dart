import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'sliders.g.dart';

@JsonSerializable()
class Sliders {
  final List<Datum>? data;
  final Meta? meta;

  const Sliders({this.data, this.meta});

  @override
  String toString() => 'Sliders(data: $data, meta: $meta)';

  factory Sliders.fromJson(Map<String, dynamic> json) {
    return _$SlidersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SlidersToJson(this);

  Sliders copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return Sliders(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Sliders) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
