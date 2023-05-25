part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAppState() = ShowAppSate;
  const factory AuthEvent.getAuthState() = GetAuthState;
  const factory AuthEvent.loginWithEmailAndPassword(LoginData data) =
      LoginWithEmailAndPassword;
  const factory AuthEvent.signUpWithEmailAndPassword(RegisterData data) =
      SignUpWithEmailAndPassword;
  const factory AuthEvent.signOut() = SignOut;
  const factory AuthEvent.sendForgetToken(String email) = SendForgetToken;
  const factory AuthEvent.resetPassword(String token, String newPassword) =
      ResetPassword;
}
