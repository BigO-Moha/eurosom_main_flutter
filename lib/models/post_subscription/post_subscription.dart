import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'post_subscription.g.dart';

@JsonSerializable()
class PostSubscription {
  final Data? data;

  const PostSubscription({this.data});

  @override
  String toString() => 'PostSubscription(data: $data)';

  factory PostSubscription.fromJson(Map<String, dynamic> json) {
    return _$PostSubscriptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostSubscriptionToJson(this);

  PostSubscription copyWith({
    Data? data,
  }) {
    return PostSubscription(
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PostSubscription) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode;
}
