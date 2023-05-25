// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowAppSateCopyWith<$Res> {
  factory _$$ShowAppSateCopyWith(
          _$ShowAppSate value, $Res Function(_$ShowAppSate) then) =
      __$$ShowAppSateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowAppSateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowAppSate>
    implements _$$ShowAppSateCopyWith<$Res> {
  __$$ShowAppSateCopyWithImpl(
      _$ShowAppSate _value, $Res Function(_$ShowAppSate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowAppSate implements ShowAppSate {
  const _$ShowAppSate();

  @override
  String toString() {
    return 'AuthEvent.checkAppState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowAppSate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return checkAppState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return checkAppState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (checkAppState != null) {
      return checkAppState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return checkAppState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return checkAppState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (checkAppState != null) {
      return checkAppState(this);
    }
    return orElse();
  }
}

abstract class ShowAppSate implements AuthEvent {
  const factory ShowAppSate() = _$ShowAppSate;
}

/// @nodoc
abstract class _$$GetAuthStateCopyWith<$Res> {
  factory _$$GetAuthStateCopyWith(
          _$GetAuthState value, $Res Function(_$GetAuthState) then) =
      __$$GetAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAuthStateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetAuthState>
    implements _$$GetAuthStateCopyWith<$Res> {
  __$$GetAuthStateCopyWithImpl(
      _$GetAuthState _value, $Res Function(_$GetAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAuthState implements GetAuthState {
  const _$GetAuthState();

  @override
  String toString() {
    return 'AuthEvent.getAuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return getAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return getAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (getAuthState != null) {
      return getAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return getAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return getAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (getAuthState != null) {
      return getAuthState(this);
    }
    return orElse();
  }
}

abstract class GetAuthState implements AuthEvent {
  const factory GetAuthState() = _$GetAuthState;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordCopyWith(
          _$LoginWithEmailAndPassword value,
          $Res Function(_$LoginWithEmailAndPassword) then) =
      __$$LoginWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginData data});
}

/// @nodoc
class __$$LoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailAndPassword>
    implements _$$LoginWithEmailAndPasswordCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordCopyWithImpl(_$LoginWithEmailAndPassword _value,
      $Res Function(_$LoginWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoginWithEmailAndPassword(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginData,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailAndPassword implements LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPassword(this.data);

  @override
  final LoginData data;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmailAndPassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPassword &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailAndPasswordCopyWith<_$LoginWithEmailAndPassword>
      get copyWith => __$$LoginWithEmailAndPasswordCopyWithImpl<
          _$LoginWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return loginWithEmailAndPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return loginWithEmailAndPassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPassword implements AuthEvent {
  const factory LoginWithEmailAndPassword(final LoginData data) =
      _$LoginWithEmailAndPassword;

  LoginData get data;
  @JsonKey(ignore: true)
  _$$LoginWithEmailAndPasswordCopyWith<_$LoginWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SignUpWithEmailAndPasswordCopyWith(
          _$SignUpWithEmailAndPassword value,
          $Res Function(_$SignUpWithEmailAndPassword) then) =
      __$$SignUpWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterData data});
}

/// @nodoc
class __$$SignUpWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpWithEmailAndPassword>
    implements _$$SignUpWithEmailAndPasswordCopyWith<$Res> {
  __$$SignUpWithEmailAndPasswordCopyWithImpl(
      _$SignUpWithEmailAndPassword _value,
      $Res Function(_$SignUpWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SignUpWithEmailAndPassword(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }
}

/// @nodoc

class _$SignUpWithEmailAndPassword implements SignUpWithEmailAndPassword {
  const _$SignUpWithEmailAndPassword(this.data);

  @override
  final RegisterData data;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmailAndPassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithEmailAndPassword &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithEmailAndPasswordCopyWith<_$SignUpWithEmailAndPassword>
      get copyWith => __$$SignUpWithEmailAndPasswordCopyWithImpl<
          _$SignUpWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return signUpWithEmailAndPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return signUpWithEmailAndPassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmailAndPassword implements AuthEvent {
  const factory SignUpWithEmailAndPassword(final RegisterData data) =
      _$SignUpWithEmailAndPassword;

  RegisterData get data;
  @JsonKey(ignore: true)
  _$$SignUpWithEmailAndPasswordCopyWith<_$SignUpWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
abstract class _$$SendForgetTokenCopyWith<$Res> {
  factory _$$SendForgetTokenCopyWith(
          _$SendForgetToken value, $Res Function(_$SendForgetToken) then) =
      __$$SendForgetTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendForgetTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendForgetToken>
    implements _$$SendForgetTokenCopyWith<$Res> {
  __$$SendForgetTokenCopyWithImpl(
      _$SendForgetToken _value, $Res Function(_$SendForgetToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendForgetToken(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendForgetToken implements SendForgetToken {
  const _$SendForgetToken(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.sendForgetToken(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendForgetToken &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendForgetTokenCopyWith<_$SendForgetToken> get copyWith =>
      __$$SendForgetTokenCopyWithImpl<_$SendForgetToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return sendForgetToken(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return sendForgetToken?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (sendForgetToken != null) {
      return sendForgetToken(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return sendForgetToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return sendForgetToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (sendForgetToken != null) {
      return sendForgetToken(this);
    }
    return orElse();
  }
}

abstract class SendForgetToken implements AuthEvent {
  const factory SendForgetToken(final String email) = _$SendForgetToken;

  String get email;
  @JsonKey(ignore: true)
  _$$SendForgetTokenCopyWith<_$SendForgetToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordCopyWith<$Res> {
  factory _$$ResetPasswordCopyWith(
          _$ResetPassword value, $Res Function(_$ResetPassword) then) =
      __$$ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String newPassword});
}

/// @nodoc
class __$$ResetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPassword>
    implements _$$ResetPasswordCopyWith<$Res> {
  __$$ResetPasswordCopyWithImpl(
      _$ResetPassword _value, $Res Function(_$ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPassword(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword(this.token, this.newPassword);

  @override
  final String token;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(token: $token, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassword &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      __$$ResetPasswordCopyWithImpl<_$ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppState,
    required TResult Function() getAuthState,
    required TResult Function(LoginData data) loginWithEmailAndPassword,
    required TResult Function(RegisterData data) signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function(String email) sendForgetToken,
    required TResult Function(String token, String newPassword) resetPassword,
  }) {
    return resetPassword(token, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppState,
    TResult? Function()? getAuthState,
    TResult? Function(LoginData data)? loginWithEmailAndPassword,
    TResult? Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function(String email)? sendForgetToken,
    TResult? Function(String token, String newPassword)? resetPassword,
  }) {
    return resetPassword?.call(token, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppState,
    TResult Function()? getAuthState,
    TResult Function(LoginData data)? loginWithEmailAndPassword,
    TResult Function(RegisterData data)? signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function(String email)? sendForgetToken,
    TResult Function(String token, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(token, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAppSate value) checkAppState,
    required TResult Function(GetAuthState value) getAuthState,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(SendForgetToken value) sendForgetToken,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAppSate value)? checkAppState,
    TResult? Function(GetAuthState value)? getAuthState,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(SendForgetToken value)? sendForgetToken,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAppSate value)? checkAppState,
    TResult Function(GetAuthState value)? getAuthState,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(SendForgetToken value)? sendForgetToken,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements AuthEvent {
  const factory ResetPassword(final String token, final String newPassword) =
      _$ResetPassword;

  String get token;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel user});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Authenticated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user);

  @override
  final AuthModel user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final AuthModel user) = _$_Authenticated;

  AuthModel get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure faliure});

  $AuthFailureCopyWith<$Res> get faliure;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faliure = null,
  }) {
    return _then(_$_UnAuthenticated(
      null == faliure
          ? _value.faliure
          : faliure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get faliure {
    return $AuthFailureCopyWith<$Res>(_value.faliure, (value) {
      return _then(_value.copyWith(faliure: value));
    });
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated(this.faliure);

  @override
  final AuthFailure faliure;

  @override
  String toString() {
    return 'AuthState.unAuthenticated(faliure: $faliure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.faliure, faliure) || other.faliure == faliure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faliure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return unAuthenticated(faliure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return unAuthenticated?.call(faliure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(faliure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated(final AuthFailure faliure) =
      _$_UnAuthenticated;

  AuthFailure get faliure;
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnboardingShowCopyWith<$Res> {
  factory _$$_OnboardingShowCopyWith(
          _$_OnboardingShow value, $Res Function(_$_OnboardingShow) then) =
      __$$_OnboardingShowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnboardingShowCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_OnboardingShow>
    implements _$$_OnboardingShowCopyWith<$Res> {
  __$$_OnboardingShowCopyWithImpl(
      _$_OnboardingShow _value, $Res Function(_$_OnboardingShow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnboardingShow implements _OnboardingShow {
  const _$_OnboardingShow();

  @override
  String toString() {
    return 'AuthState.onboardingShow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnboardingShow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return onboardingShow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return onboardingShow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (onboardingShow != null) {
      return onboardingShow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return onboardingShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return onboardingShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (onboardingShow != null) {
      return onboardingShow(this);
    }
    return orElse();
  }
}

abstract class _OnboardingShow implements AuthState {
  const factory _OnboardingShow() = _$_OnboardingShow;
}

/// @nodoc
abstract class _$$_CodesentCopyWith<$Res> {
  factory _$$_CodesentCopyWith(
          _$_Codesent value, $Res Function(_$_Codesent) then) =
      __$$_CodesentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CodesentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Codesent>
    implements _$$_CodesentCopyWith<$Res> {
  __$$_CodesentCopyWithImpl(
      _$_Codesent _value, $Res Function(_$_Codesent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Codesent implements _Codesent {
  const _$_Codesent();

  @override
  String toString() {
    return 'AuthState.codeSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Codesent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return codeSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _Codesent implements AuthState {
  const factory _Codesent() = _$_Codesent;
}

/// @nodoc
abstract class _$$_ResetSuccessCopyWith<$Res> {
  factory _$$_ResetSuccessCopyWith(
          _$_ResetSuccess value, $Res Function(_$_ResetSuccess) then) =
      __$$_ResetSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel user});
}

/// @nodoc
class __$$_ResetSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResetSuccess>
    implements _$$_ResetSuccessCopyWith<$Res> {
  __$$_ResetSuccessCopyWithImpl(
      _$_ResetSuccess _value, $Res Function(_$_ResetSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ResetSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$_ResetSuccess implements _ResetSuccess {
  const _$_ResetSuccess(this.user);

  @override
  final AuthModel user;

  @override
  String toString() {
    return 'AuthState.resetSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetSuccessCopyWith<_$_ResetSuccess> get copyWith =>
      __$$_ResetSuccessCopyWithImpl<_$_ResetSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return resetSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return resetSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (resetSuccess != null) {
      return resetSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return resetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return resetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (resetSuccess != null) {
      return resetSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResetSuccess implements AuthState {
  const factory _ResetSuccess(final AuthModel user) = _$_ResetSuccess;

  AuthModel get user;
  @JsonKey(ignore: true)
  _$$_ResetSuccessCopyWith<_$_ResetSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetFailureCopyWith<$Res> {
  factory _$$_ResetFailureCopyWith(
          _$_ResetFailure value, $Res Function(_$_ResetFailure) then) =
      __$$_ResetFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ResetFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResetFailure>
    implements _$$_ResetFailureCopyWith<$Res> {
  __$$_ResetFailureCopyWithImpl(
      _$_ResetFailure _value, $Res Function(_$_ResetFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ResetFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ResetFailure implements _ResetFailure {
  const _$_ResetFailure(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.resetFaliure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetFailureCopyWith<_$_ResetFailure> get copyWith =>
      __$$_ResetFailureCopyWithImpl<_$_ResetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return resetFaliure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return resetFaliure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (resetFaliure != null) {
      return resetFaliure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return resetFaliure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return resetFaliure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (resetFaliure != null) {
      return resetFaliure(this);
    }
    return orElse();
  }
}

abstract class _ResetFailure implements AuthState {
  const factory _ResetFailure(final AuthFailure failure) = _$_ResetFailure;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$_ResetFailureCopyWith<_$_ResetFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthModel user) authenticated,
    required TResult Function(AuthFailure faliure) unAuthenticated,
    required TResult Function() onboardingShow,
    required TResult Function() codeSent,
    required TResult Function(AuthModel user) resetSuccess,
    required TResult Function(AuthFailure failure) resetFaliure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthModel user)? authenticated,
    TResult? Function(AuthFailure faliure)? unAuthenticated,
    TResult? Function()? onboardingShow,
    TResult? Function()? codeSent,
    TResult? Function(AuthModel user)? resetSuccess,
    TResult? Function(AuthFailure failure)? resetFaliure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthModel user)? authenticated,
    TResult Function(AuthFailure faliure)? unAuthenticated,
    TResult Function()? onboardingShow,
    TResult Function()? codeSent,
    TResult Function(AuthModel user)? resetSuccess,
    TResult Function(AuthFailure failure)? resetFaliure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_OnboardingShow value) onboardingShow,
    required TResult Function(_Codesent value) codeSent,
    required TResult Function(_ResetSuccess value) resetSuccess,
    required TResult Function(_ResetFailure value) resetFaliure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_OnboardingShow value)? onboardingShow,
    TResult? Function(_Codesent value)? codeSent,
    TResult? Function(_ResetSuccess value)? resetSuccess,
    TResult? Function(_ResetFailure value)? resetFaliure,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_OnboardingShow value)? onboardingShow,
    TResult Function(_Codesent value)? codeSent,
    TResult Function(_ResetSuccess value)? resetSuccess,
    TResult Function(_ResetFailure value)? resetFaliure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}
