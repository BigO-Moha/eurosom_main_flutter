import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'appsmodel.g.dart';

@JsonSerializable()
class Appsmodel {
  final List<Datum>? data;
  final Meta? meta;

  const Appsmodel({this.data, this.meta});

  @override
  String toString() => 'Appsmodel(data: $data, meta: $meta)';

  factory Appsmodel.fromJson(Map<String, dynamic> json) {
    return _$AppsmodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AppsmodelToJson(this);

  Appsmodel copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return Appsmodel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Appsmodel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
