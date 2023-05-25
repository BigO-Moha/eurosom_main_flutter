import 'package:dio/dio.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/services/auth/auth_rest_api.dart';
import 'package:eurosom/services/eurosom/euro_api.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

@module
abstract class ServiceProviders {
  @lazySingleton
  AuthApiService get authClient => AuthApiService(Dio(BaseOptions(
      connectTimeout: 10 * 1000, // 60 seconds
      receiveTimeout: 10 * 1000,
      sendTimeout: 10 * 1000,
      receiveDataWhenStatusError: true)));
  @lazySingleton
  EuroApiService get apiClient => EuroApiService(Dio(BaseOptions(
        headers: {"Authorization": "Bearer $userToken"},
        followRedirects: false,
        connectTimeout: 10 * 1000, // 60 seconds
        receiveTimeout: 10 * 1000,
        sendTimeout: 10 * 1000,
        validateStatus: (status) {
          return status! < 500;
        },
      )));
}

String get userToken => getIt<IAuthFacade>()
    .getSignedUser()
    .fold((l) => "error", (response) => response.jwt.toString());
