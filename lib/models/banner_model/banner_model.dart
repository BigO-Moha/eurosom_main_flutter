import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  List<Datum>? data;
  Meta? meta;

  BannerModel({this.data, this.meta});

  @override
  String toString() => 'BannerModel(data: $data, meta: $meta)';

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return _$BannerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);

  BannerModel copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return BannerModel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BannerModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
