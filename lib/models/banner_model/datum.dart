import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  String? title;
  String? subtitle;
  DateTime? createdAt;
  DateTime? updatedAt;
  Banner? banner;

  Datum({
    this.id,
    this.title,
    this.subtitle,
    this.createdAt,
    this.updatedAt,
    this.banner,
  });

  @override
  String toString() {
    return 'Datum(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt, updatedAt: $updatedAt, banner: $banner)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    String? title,
    String? subtitle,
    DateTime? createdAt,
    DateTime? updatedAt,
    Banner? banner,
  }) {
    return Datum(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      banner: banner ?? this.banner,
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
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      banner.hashCode;
}
