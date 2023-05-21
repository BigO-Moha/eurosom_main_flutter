import 'package:dio/dio.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/services/core/config.dart';
import 'package:retrofit/retrofit.dart';

part 'euro_api.g.dart';

@RestApi(baseUrl: Config.serverUrl)
abstract class EuroApiService {
  factory EuroApiService(Dio dio, {String? baseUrl}) = _EuroApiService;
  @GET("/home-sliders")
  Future<BannerModel> getHomeSliders(@Queries() Map<String, dynamic> query);
}
