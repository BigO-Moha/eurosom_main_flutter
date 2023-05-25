import 'package:dio/dio.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/services/core/config.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_rest_api.g.dart';

@RestApi(baseUrl: Config.serverUrl)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String? baseUrl}) = _AuthApiService;
  @POST("/auth/local")
  Future<AuthModel> login(@Body() Map<String, dynamic> credentials);

  @POST("/auth/local/register")
  Future<AuthModel> register(@Body() Map<String, dynamic> regbody);

  @POST("/auth/forgot-password")
  Future<HttpResponse> forgetPassword(@Body() Map<String, dynamic> email);

  @POST("/auth/reset-password")
  Future<AuthModel> resetPassword(@Body() Map<String, dynamic> regbody);

  @POST("/auth/forgot-password")
  Future<AuthModel> sendToken(@Body() Map<String, dynamic> regbody);

  @PUT("/users/{id}")
  Future<AuthModel> updateUser(
      @Path() String id, @Body() Map<String, dynamic> regbody);
}
