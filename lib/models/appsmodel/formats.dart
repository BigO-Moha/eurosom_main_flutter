import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'large.dart';
import 'medium.dart';
import 'small.dart';
import 'thumbnail.dart';

part 'formats.g.dart';

@JsonSerializable()
class Formats {
  final Large? large;
  final Small? small;
  final Medium? medium;
  final Thumbnail? thumbnail;

  const Formats({this.large, this.small, this.medium, this.thumbnail});

  @override
  String toString() {
    return 'Formats(large: $large, small: $small, medium: $medium, thumbnail: $thumbnail)';
  }

  factory Formats.fromJson(Map<String, dynamic> json) {
    return _$FormatsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FormatsToJson(this);

  Formats copyWith({
    Large? large,
    Small? small,
    Medium? medium,
    Thumbnail? thumbnail,
  }) {
    return Formats(
      large: large ?? this.large,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Formats) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      large.hashCode ^ small.hashCode ^ medium.hashCode ^ thumbnail.hashCode;
}
