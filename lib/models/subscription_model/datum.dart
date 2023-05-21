import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	final int? id;
	final String? status;
	@JsonKey(name: 'start_date') 
	final String? startDate;
	@JsonKey(name: 'expiry_date') 
	final String? expiryDate;
	final int? amount;
	@JsonKey(name: 'payment_method') 
	final String? paymentMethod;
	final String? account;
	final DateTime? createdAt;
	final DateTime? updatedAt;
	@JsonKey(name: 'app_id') 
	final int? appId;

	const Datum({
		this.id, 
		this.status, 
		this.startDate, 
		this.expiryDate, 
		this.amount, 
		this.paymentMethod, 
		this.account, 
		this.createdAt, 
		this.updatedAt, 
		this.appId, 
	});

	@override
	String toString() {
		return 'Datum(id: $id, status: $status, startDate: $startDate, expiryDate: $expiryDate, amount: $amount, paymentMethod: $paymentMethod, account: $account, createdAt: $createdAt, updatedAt: $updatedAt, appId: $appId)';
	}

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);

	Datum copyWith({
		int? id,
		String? status,
		String? startDate,
		String? expiryDate,
		int? amount,
		String? paymentMethod,
		String? account,
		DateTime? createdAt,
		DateTime? updatedAt,
		int? appId,
	}) {
		return Datum(
			id: id ?? this.id,
			status: status ?? this.status,
			startDate: startDate ?? this.startDate,
			expiryDate: expiryDate ?? this.expiryDate,
			amount: amount ?? this.amount,
			paymentMethod: paymentMethod ?? this.paymentMethod,
			account: account ?? this.account,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
			appId: appId ?? this.appId,
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
			status.hashCode ^
			startDate.hashCode ^
			expiryDate.hashCode ^
			amount.hashCode ^
			paymentMethod.hashCode ^
			account.hashCode ^
			createdAt.hashCode ^
			updatedAt.hashCode ^
			appId.hashCode;
}
