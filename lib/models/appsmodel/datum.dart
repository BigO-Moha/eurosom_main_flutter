import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'icon.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	final int? id;
	final String? title;
	final String? url;
	final DateTime? createdAt;
	final DateTime? updatedAt;
	@JsonKey(name: 'its_webview') 
	final dynamic itsWebview;
	final Icon? icon;

	const Datum({
		this.id, 
		this.title, 
		this.url, 
		this.createdAt, 
		this.updatedAt, 
		this.itsWebview, 
		this.icon, 
	});

	@override
	String toString() {
		return 'Datum(id: $id, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, itsWebview: $itsWebview, icon: $icon)';
	}

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);

	Datum copyWith({
		int? id,
		String? title,
		String? url,
		DateTime? createdAt,
		DateTime? updatedAt,
		dynamic itsWebview,
		Icon? icon,
	}) {
		return Datum(
			id: id ?? this.id,
			title: title ?? this.title,
			url: url ?? this.url,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
			itsWebview: itsWebview ?? this.itsWebview,
			icon: icon ?? this.icon,
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
			icon.hashCode;
}
