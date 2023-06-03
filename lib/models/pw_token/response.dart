import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  @JsonKey(name: 'Code')
  final String? code;
  @JsonKey(name: 'Messages')
  final String? messages;
  @JsonKey(name: 'Errors')
  final List<dynamic>? errors;

  const Response({this.code, this.messages, this.errors});

  @override
  String toString() {
    return 'Response(code: $code, messages: $messages, errors: $errors)';
  }

  factory Response.fromJson(Map<String, dynamic> json) {
    return _$ResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseToJson(this);

  Response copyWith({
    String? code,
    String? messages,
    List<dynamic>? errors,
  }) {
    return Response(
      code: code ?? this.code,
      messages: messages ?? this.messages,
      errors: errors ?? this.errors,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Response) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => code.hashCode ^ messages.hashCode ^ errors.hashCode;
}
