import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'attributes.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  final Attributes? attributes;

  const Datum({this.id, this.attributes});

  @override
  String toString() => 'Datum(id: $id, attributes: $attributes)';

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    Attributes? attributes,
  }) {
    return Datum(
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datum) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ attributes.hashCode;
}
