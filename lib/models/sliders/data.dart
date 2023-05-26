import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'attributes.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final int? id;
  final Attributes? attributes;

  const Data({this.id, this.attributes});

  @override
  String toString() => 'Data(id: $id, attributes: $attributes)';

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? id,
    Attributes? attributes,
  }) {
    return Data(
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
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
  int get hashCode => id.hashCode ^ attributes.hashCode;
}
