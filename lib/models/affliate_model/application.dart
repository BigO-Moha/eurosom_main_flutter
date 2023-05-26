import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'application.g.dart';

@JsonSerializable()
class Application {
  final int? id;
  final String? title;
  final String? url;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'its_webview')
  final bool? itsWebview;

  const Application({
    this.id,
    this.title,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.itsWebview,
  });

  @override
  String toString() {
    return 'Application(id: $id, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, itsWebview: $itsWebview)';
  }

  factory Application.fromJson(Map<String, dynamic> json) {
    return _$ApplicationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);

  Application copyWith({
    int? id,
    String? title,
    String? url,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? itsWebview,
  }) {
    return Application(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      itsWebview: itsWebview ?? this.itsWebview,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Application) return false;
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
      itsWebview.hashCode;
}
