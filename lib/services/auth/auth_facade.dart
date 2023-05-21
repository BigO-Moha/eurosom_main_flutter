import 'package:dartz/dartz.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/failures/auth_failure.dart';
import 'package:eurosom/models/login/login.dart';
import 'package:eurosom/models/register/register_data.dart';
import 'package:eurosom/services/auth/auth_rest_api.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
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
      if (e.type == DioErrorType.badResponse) {
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
      String password, String token) {
    // TODO: implement resetPassword
    throw UnimplementedError();
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
      box.write('user', authModel.toJson());
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendmailToken(String email) {
    // TODO: implement sendmailToken
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, AuthModel>> signInWithEmailAndPassword(
      LoginData loginInfo) async {
    try {
      final loginData = await _authApiService.register(loginInfo.toJson());
      saveUser(loginData);
      return right(loginData);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(AuthFailure.authException(
            e.response!.data["error"]["message"].toString()));
      } else {
        print(e.error);
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() async {
    try {
      box.remove('user');
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<AuthFailure, AuthModel>> updateUser(AuthModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> validateMobile() {
    // TODO: implement validateMobile
    throw UnimplementedError();
  }
}
