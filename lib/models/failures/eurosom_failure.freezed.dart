// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eurosom_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EurosomFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String message) paymentError,
    required TResult Function(String message) fetchError,
    required TResult Function(String? message) postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(String message)? paymentError,
    TResult? Function(String message)? fetchError,
    TResult? Function(String? message)? postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String message)? paymentError,
    TResult Function(String message)? fetchError,
    TResult Function(String? message)? postError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PaymentFailure value) paymentError,
    required TResult Function(FetchError value) fetchError,
    required TResult Function(POstError value) postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PaymentFailure value)? paymentError,
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(POstError value)? postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PaymentFailure value)? paymentError,
    TResult Function(FetchError value)? fetchError,
    TResult Function(POstError value)? postError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EurosomFailureCopyWith<$Res> {
  factory $EurosomFailureCopyWith(
          EurosomFailure value, $Res Function(EurosomFailure) then) =
      _$EurosomFailureCopyWithImpl<$Res, EurosomFailure>;
}

/// @nodoc
class _$EurosomFailureCopyWithImpl<$Res, $Val extends EurosomFailure>
    implements $EurosomFailureCopyWith<$Res> {
  _$EurosomFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$EurosomFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'EurosomFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String message) paymentError,
    required TResult Function(String message) fetchError,
    required TResult Function(String? message) postError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(String message)? paymentError,
    TResult? Function(String message)? fetchError,
    TResult? Function(String? message)? postError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String message)? paymentError,
    TResult Function(String message)? fetchError,
    TResult Function(String? message)? postError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PaymentFailure value) paymentError,
    required TResult Function(FetchError value) fetchError,
    required TResult Function(POstError value) postError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PaymentFailure value)? paymentError,
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(POstError value)? postError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PaymentFailure value)? paymentError,
    TResult Function(FetchError value)? fetchError,
    TResult Function(POstError value)? postError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements EurosomFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$PaymentFailureCopyWith<$Res> {
  factory _$$PaymentFailureCopyWith(
          _$PaymentFailure value, $Res Function(_$PaymentFailure) then) =
      __$$PaymentFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaymentFailureCopyWithImpl<$Res>
    extends _$EurosomFailureCopyWithImpl<$Res, _$PaymentFailure>
    implements _$$PaymentFailureCopyWith<$Res> {
  __$$PaymentFailureCopyWithImpl(
      _$PaymentFailure _value, $Res Function(_$PaymentFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PaymentFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentFailure implements PaymentFailure {
  const _$PaymentFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EurosomFailure.paymentError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailureCopyWith<_$PaymentFailure> get copyWith =>
      __$$PaymentFailureCopyWithImpl<_$PaymentFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String message) paymentError,
    required TResult Function(String message) fetchError,
    required TResult Function(String? message) postError,
  }) {
    return paymentError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(String message)? paymentError,
    TResult? Function(String message)? fetchError,
    TResult? Function(String? message)? postError,
  }) {
    return paymentError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String message)? paymentError,
    TResult Function(String message)? fetchError,
    TResult Function(String? message)? postError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PaymentFailure value) paymentError,
    required TResult Function(FetchError value) fetchError,
    required TResult Function(POstError value) postError,
  }) {
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PaymentFailure value)? paymentError,
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(POstError value)? postError,
  }) {
    return paymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PaymentFailure value)? paymentError,
    TResult Function(FetchError value)? fetchError,
    TResult Function(POstError value)? postError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class PaymentFailure implements EurosomFailure {
  const factory PaymentFailure(final String message) = _$PaymentFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$PaymentFailureCopyWith<_$PaymentFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchErrorCopyWith<$Res> {
  factory _$$FetchErrorCopyWith(
          _$FetchError value, $Res Function(_$FetchError) then) =
      __$$FetchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchErrorCopyWithImpl<$Res>
    extends _$EurosomFailureCopyWithImpl<$Res, _$FetchError>
    implements _$$FetchErrorCopyWith<$Res> {
  __$$FetchErrorCopyWithImpl(
      _$FetchError _value, $Res Function(_$FetchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchError implements FetchError {
  const _$FetchError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EurosomFailure.fetchError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorCopyWith<_$FetchError> get copyWith =>
      __$$FetchErrorCopyWithImpl<_$FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String message) paymentError,
    required TResult Function(String message) fetchError,
    required TResult Function(String? message) postError,
  }) {
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(String message)? paymentError,
    TResult? Function(String message)? fetchError,
    TResult? Function(String? message)? postError,
  }) {
    return fetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String message)? paymentError,
    TResult Function(String message)? fetchError,
    TResult Function(String? message)? postError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PaymentFailure value) paymentError,
    required TResult Function(FetchError value) fetchError,
    required TResult Function(POstError value) postError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PaymentFailure value)? paymentError,
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(POstError value)? postError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PaymentFailure value)? paymentError,
    TResult Function(FetchError value)? fetchError,
    TResult Function(POstError value)? postError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements EurosomFailure {
  const factory FetchError(final String message) = _$FetchError;

  String get message;
  @JsonKey(ignore: true)
  _$$FetchErrorCopyWith<_$FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$POstErrorCopyWith<$Res> {
  factory _$$POstErrorCopyWith(
          _$POstError value, $Res Function(_$POstError) then) =
      __$$POstErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$POstErrorCopyWithImpl<$Res>
    extends _$EurosomFailureCopyWithImpl<$Res, _$POstError>
    implements _$$POstErrorCopyWith<$Res> {
  __$$POstErrorCopyWithImpl(
      _$POstError _value, $Res Function(_$POstError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$POstError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$POstError implements POstError {
  const _$POstError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'EurosomFailure.postError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$POstError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$POstErrorCopyWith<_$POstError> get copyWith =>
      __$$POstErrorCopyWithImpl<_$POstError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String message) paymentError,
    required TResult Function(String message) fetchError,
    required TResult Function(String? message) postError,
  }) {
    return postError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function(String message)? paymentError,
    TResult? Function(String message)? fetchError,
    TResult? Function(String? message)? postError,
  }) {
    return postError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String message)? paymentError,
    TResult Function(String message)? fetchError,
    TResult Function(String? message)? postError,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PaymentFailure value) paymentError,
    required TResult Function(FetchError value) fetchError,
    required TResult Function(POstError value) postError,
  }) {
    return postError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PaymentFailure value)? paymentError,
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(POstError value)? postError,
  }) {
    return postError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PaymentFailure value)? paymentError,
    TResult Function(FetchError value)? fetchError,
    TResult Function(POstError value)? postError,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(this);
    }
    return orElse();
  }
}

abstract class POstError implements EurosomFailure {
  const factory POstError([final String? message]) = _$POstError;

  String? get message;
  @JsonKey(ignore: true)
  _$$POstErrorCopyWith<_$POstError> get copyWith =>
      throw _privateConstructorUsedError;
}
