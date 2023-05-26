import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  final String? title;
  final String? subtitle;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Banner? banner;

  const Attributes({
    this.title,
    this.subtitle,
    this.createdAt,
    this.updatedAt,
    this.banner,
  });

  @override
  String toString() {
    return 'Attributes(title: $title, subtitle: $subtitle, createdAt: $createdAt, updatedAt: $updatedAt, banner: $banner)';
  }

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  Attributes copyWith({
    String? title,
    String? subtitle,
    DateTime? createdAt,
    DateTime? updatedAt,
    Banner? banner,
  }) {
    return Attributes(
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
    if (other is! Attributes) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      title.hashCode ^
      subtitle.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      banner.hashCode;
}
