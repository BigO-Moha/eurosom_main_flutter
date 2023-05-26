import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'image.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? id;
  final String? title;
  final String? url;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'its_webview')
  final bool? itsWebview;
  final bool? active;
  final Image? image;

  const Datum({
    this.id,
    this.title,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.itsWebview,
    this.active,
    this.image,
  });

  @override
  String toString() {
    return 'Datum(id: $id, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, itsWebview: $itsWebview, active: $active, image: $image)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    String? title,
    String? url,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? itsWebview,
    bool? active,
    Image? image,
  }) {
    return Datum(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      itsWebview: itsWebview ?? this.itsWebview,
      active: active ?? this.active,
      image: image ?? this.image,
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
      url.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      itsWebview.hashCode ^
      active.hashCode ^
      image.hashCode;
}
