import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app.g.dart';

@JsonSerializable()
class App {
  final int? id;
  final String? title;
  final String? url;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'its_webview')
  final bool? itsWebview;

  const App({
    this.id,
    this.title,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.itsWebview,
  });

  @override
  String toString() {
    return 'App(id: $id, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, itsWebview: $itsWebview)';
  }

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);

  Map<String, dynamic> toJson() => _$AppToJson(this);

  App copyWith({
    int? id,
    String? title,
    String? url,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? itsWebview,
  }) {
    return App(
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
    if (other is! App) return false;
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
