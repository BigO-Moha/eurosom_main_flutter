import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'thumbnail.g.dart';

@JsonSerializable()
class Thumbnail {
  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  Thumbnail({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  @override
  String toString() {
    return 'Thumbnail(ext: $ext, url: $url, hash: $hash, mime: $mime, name: $name, path: $path, size: $size, width: $width, height: $height)';
  }

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return _$ThumbnailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

  Thumbnail copyWith({
    String? ext,
    String? url,
    String? hash,
    String? mime,
    String? name,
    dynamic path,
    double? size,
    int? width,
    int? height,
  }) {
    return Thumbnail(
      ext: ext ?? this.ext,
      url: url ?? this.url,
      hash: hash ?? this.hash,
      mime: mime ?? this.mime,
      name: name ?? this.name,
      path: path ?? this.path,
      size: size ?? this.size,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Thumbnail) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      ext.hashCode ^
      url.hashCode ^
      hash.hashCode ^
      mime.hashCode ^
      name.hashCode ^
      path.hashCode ^
      size.hashCode ^
      width.hashCode ^
      height.hashCode;
}
