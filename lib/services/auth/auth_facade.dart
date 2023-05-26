import 'package:dartz/dartz.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/failures/auth_failure.dart';
import 'package:eurosom/models/login/login.dart';
import 'package:eurosom/models/register/register.dart';
import 'package:eurosom/services/auth/auth_rest_api.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthApiService _authApiService;
  final box = GetStorage();

  AuthFacade(this._authApiService);

  @override
  bool getItsFristTime() {
    final data = box.read('isNew');

    if (data == false) {
      return false;
    } else {
      saveItsfristTime();
      return true;
    }
  }

  @override
  Either<Unit, AuthModel> getSignedUser() {
    try {
      final data = box.read('user');
      final userObj = AuthModel.fromJson(data);

      if (data == null) {
        return left(unit);
      } else {
        return right(userObj);
      }
    } catch (e) {
      return left(unit);
    }
  }

  @override
  Future<Either<AuthFailure, AuthModel>> registerWithEmailAndPassword(
      RegisterData signupInfo) async {
    try {
      final registerData = await _authApiService.register(signupInfo.toJson());
      saveUser(registerData);
      return right(registerData);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(AuthFailure.authException(
            e.response!.data["error"]["message"].toString()));
      } else {
        print(e.error);
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, AuthModel>> resetPassword(
      String password, String token) async {
    try {
      final user = await _authApiService.resetPassword({
        "password": password,
        "passwordConfirmation": password,
        "code": token
      });
      saveUser(user);
      return right(user);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(AuthFailure.authException(
            e.response!.data["error"]["message"].toString()));
      } else {
        print(e.error);
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> saveItsfristTime() async {
    try {
      await box.write('isNew', false);
    } catch (e) {}
  }

  @override
  Future<void> saveUser(AuthModel authModel) async {
    try {
      await box.write('user', authModel.toJson());
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<AuthFailure, AuthModel>> signInWithEmailAndPassword(
      LoginData loginInfo) async {
    try {
      final loginData = await _authApiService.login(loginInfo.toJson());
      print(loginData.toJson());
      saveUser(loginData);
      return right(loginData);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(AuthFailure.authException(
            e.response!.data["error"]["message"].toString()));
      } else {
        print(e.error);
        return left(const AuthFailure.serverError());
      }
    } on Error catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      box.erase();
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<AuthFailure, AuthModel>> updateUser(AuthModel user) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> validateMobile() {
    throw UnimplementedError();
  }

  @override
  Future<void> sendResetToken(String email) async {
    try {
      print('poo');
      final send = _authApiService.sendToken({"email": email});
      print(send);
    } on DioError catch (e) {
      print(e);
    }
  }
}
