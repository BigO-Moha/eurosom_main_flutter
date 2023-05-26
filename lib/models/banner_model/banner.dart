import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'formats.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
  int? id;
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  @JsonKey(name: 'provider_metadata')
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  Banner({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'Banner(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory Banner.fromJson(Map<String, dynamic> json) {
    return _$BannerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerToJson(this);

  Banner copyWith({
    int? id,
    String? name,
    dynamic alternativeText,
    dynamic caption,
    int? width,
    int? height,
    Formats? formats,
    String? hash,
    String? ext,
    String? mime,
    double? size,
    String? url,
    dynamic previewUrl,
    String? provider,
    dynamic providerMetadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Banner(
      id: id ?? this.id,
      name: name ?? this.name,
      alternativeText: alternativeText ?? this.alternativeText,
      caption: caption ?? this.caption,
      width: width ?? this.width,
      height: height ?? this.height,
      formats: formats ?? this.formats,
      hash: hash ?? this.hash,
      ext: ext ?? this.ext,
      mime: mime ?? this.mime,
      size: size ?? this.size,
      url: url ?? this.url,
      previewUrl: previewUrl ?? this.previewUrl,
      provider: provider ?? this.provider,
      providerMetadata: providerMetadata ?? this.providerMetadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Banner) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      alternativeText.hashCode ^
      caption.hashCode ^
      width.hashCode ^
      height.hashCode ^
      formats.hashCode ^
      hash.hashCode ^
      ext.hashCode ^
      mime.hashCode ^
      size.hashCode ^
      url.hashCode ^
      previewUrl.hashCode ^
      provider.hashCode ^
      providerMetadata.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
}
