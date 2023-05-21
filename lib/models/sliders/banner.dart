import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
	final Data? data;

	const Banner({this.data});

	@override
	String toString() => 'Banner(data: $data)';

	factory Banner.fromJson(Map<String, dynamic> json) {
		return _$BannerFromJson(json);
	}

	Map<String, dynamic> toJson() => _$BannerToJson(this);

	Banner copyWith({
		Data? data,
	}) {
		return Banner(
			data: data ?? this.data,
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
	int get hashCode => data.hashCode;
}
