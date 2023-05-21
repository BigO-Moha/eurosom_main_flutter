import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	final int? id;
	final String? name;
	final int? price;
	final String? features;
	final String? duration;
	final String? discount;
	final DateTime? createdAt;
	final DateTime? updatedAt;
	final DateTime? publishedAt;
	final String? subtitle;

	const Datum({
		this.id, 
		this.name, 
		this.price, 
		this.features, 
		this.duration, 
		this.discount, 
		this.createdAt, 
		this.updatedAt, 
		this.publishedAt, 
		this.subtitle, 
	});

	@override
	String toString() {
		return 'Datum(id: $id, name: $name, price: $price, features: $features, duration: $duration, discount: $discount, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, subtitle: $subtitle)';
	}

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);

	Datum copyWith({
		int? id,
		String? name,
		int? price,
		String? features,
		String? duration,
		String? discount,
		DateTime? createdAt,
		DateTime? updatedAt,
		DateTime? publishedAt,
		String? subtitle,
	}) {
		return Datum(
			id: id ?? this.id,
			name: name ?? this.name,
			price: price ?? this.price,
			features: features ?? this.features,
			duration: duration ?? this.duration,
			discount: discount ?? this.discount,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
			publishedAt: publishedAt ?? this.publishedAt,
			subtitle: subtitle ?? this.subtitle,
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
			name.hashCode ^
			price.hashCode ^
			features.hashCode ^
			duration.hashCode ^
			discount.hashCode ^
			createdAt.hashCode ^
			updatedAt.hashCode ^
			publishedAt.hashCode ^
			subtitle.hashCode;
}
