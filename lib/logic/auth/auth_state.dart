part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(AuthModel user) = _Authenticated;
  const factory AuthState.unAuthenticated(AuthFailure faliure) =
      _UnAuthenticated;
  const factory AuthState.onboardingShow() = _OnboardingShow;
  const factory AuthState.codeSent() = _Codesent;
  const factory AuthState.resetSuccess(AuthModel user) = _ResetSuccess;
  const factory AuthState.resetFaliure(AuthModel user) = _ResetFailure;
  const factory AuthState.loading() = _Loading;
}
