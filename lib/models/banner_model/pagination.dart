import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable()
class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  @override
  String toString() {
    return 'Pagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return _$PaginationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  Pagination copyWith({
    int? page,
    int? pageSize,
    int? pageCount,
    int? total,
  }) {
    return Pagination(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      pageCount: pageCount ?? this.pageCount,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Pagination) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      page.hashCode ^ pageSize.hashCode ^ pageCount.hashCode ^ total.hashCode;
}
