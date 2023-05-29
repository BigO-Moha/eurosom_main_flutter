import 'package:dartz/dartz.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/failures/auth_failure.dart';
import 'package:eurosom/models/login/login.dart';
import 'package:eurosom/models/register/register.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, AuthModel>> registerWithEmailAndPassword(
      RegisterData signupInfo);

  Future<Either<AuthFailure, AuthModel>> signInWithEmailAndPassword(
      LoginData loginInfo);
  Future<void> saveItsfristTime();
  bool getItsFristTime();
  Future<Either<AuthFailure, Unit>> validateMobile();
  Future<Either<AuthFailure, AuthModel>> updateUser(AuthModel user);
  Future<Either<AuthFailure, AuthModel>> resetPassword(
      String password, String token);
  Future<void> sendResetToken(String email);
  Future<void> saveUser(AuthModel AuthModel);
  Either<Unit, AuthModel> getSignedUser();
  Future<void> signOut();
}
