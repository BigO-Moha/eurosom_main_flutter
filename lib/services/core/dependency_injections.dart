import 'package:dio/dio.dart';
import 'package:eurosom/services/auth/auth_rest_api.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

@module
abstract class ServiceProviders {
  @lazySingleton
  AuthApiService get authClient => AuthApiService(Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 50), // 60 seconds
      receiveTimeout: const Duration(seconds: 50),
      sendTimeout: const Duration(seconds: 50),
      receiveDataWhenStatusError: true)));
  // @lazySingleton
  // DegDegApiService get apiClient => DegDegApiService(Dio(BaseOptions(
  //       headers: {"Authorization": "Bearer $userToken"},
  //       followRedirects: false,
  //       connectTimeout: 10 * 1000, // 60 seconds
  //       receiveTimeout: 10 * 1000,
  //       sendTimeout: 10 * 1000,
  //       validateStatus: (status) {
  //         return status! < 500;
  //       },
  //     )));
}

// String get userToken => getIt<IAuthFacade>()
//     .getSignedUser()
//     .fold((l) => "error", (response) => response.jwt.toString());