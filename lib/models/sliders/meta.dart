import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'pagination.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  final Pagination? pagination;

  const Meta({this.pagination});

  @override
  String toString() => 'Meta(pagination: $pagination)';

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  Meta copyWith({
    Pagination? pagination,
  }) {
    return Meta(
      pagination: pagination ?? this.pagination,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Meta) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => pagination.hashCode;
}
