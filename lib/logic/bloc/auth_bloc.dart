import 'package:bloc/bloc.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/failures/auth_failure.dart';
import 'package:eurosom/models/login/login.dart';
import 'package:eurosom/models/register/register_data.dart';
import 'package:eurosom/services/auth/auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
          checkAppState: (e) async {
            final itsNew = _authFacade.getItsFristTime();
            print(itsNew);
            if (itsNew == false) {
              add(GetAuthState());
            } else {
              print("onboarding");
              emit(const AuthState.onboardingShow());
            }
          },
          getAuthState: (e) async {
            final user = _authFacade.getSignedUser();
            print(user);
            final data = user.fold((l) => null, (r) => r);
            if (user.isRight()) {
              emit(AuthState.authenticated(data!));
            } else {
              final f = user.fold((l) => l, (r) => null);

              emit(const AuthState.unAuthenticated(
                  AuthFailure.invalidData("user Not found")));
            }
          },
          loginWithEmailAndPassword: (e) async {
            final loginResponse =
                await _authFacade.signInWithEmailAndPassword(e.data);
            final userData = loginResponse.fold((l) => null, (r) => r);
            if (loginResponse.isRight()) {
              emit(AuthState.authenticated(userData!));
            } else {
              final f = loginResponse.fold((l) => l, (r) => null);
              emit(AuthState.unAuthenticated(f!));
            }
          },
          signUpWithEmailAndPassword: (e) async {
            final registerResponse =
                await _authFacade.registerWithEmailAndPassword(e.data);
            final userData = registerResponse.fold((l) => null, (r) => r);
            if (registerResponse.isRight()) {
              emit(AuthState.authenticated(userData!));
            } else {
              final f = registerResponse.fold((l) => l, (r) => null);
              emit(AuthState.unAuthenticated(f!));
            }
          },
          signOut: (e) async {
            await _authFacade.signOut();
          },
          sendForgetToken: (e) async {},
          resetPassword: (e) async {});
    });
  }
}
