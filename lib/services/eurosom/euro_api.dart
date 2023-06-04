import 'package:dio/dio.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/configs/configs.dart';
import 'package:eurosom/models/dahab_invoice/dahab_invoice.dart';
import 'package:eurosom/models/p_wreq_response/p_wreq_response.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/pw_token/pw_token.dart';
import 'package:eurosom/models/pw_verify/pw_verify.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/models/user_response/user_response.dart';
import 'package:eurosom/models/verify_edahab_payment/verify_edahab_payment.dart';
import 'package:eurosom/services/core/config.dart';
import 'package:retrofit/retrofit.dart';

part 'euro_api.g.dart';

@RestApi(baseUrl: Config.serverUrl)
abstract class EuroApiService {
  factory EuroApiService(Dio dio, {String? baseUrl}) = _EuroApiService;
  @GET("/home-sliders")
  Future<BannerModel> getHomeSliders(@Queries() Map<String, dynamic> query);
  @GET("/applications")
  Future<Appsmodel> getAllApplications(@Queries() Map<String, dynamic> query);
  @GET("/pricings")
  Future<PricingModel> getAllPricings(@Queries() Map<String, dynamic> query);
  @GET("/affliates")
  Future<AffliateModel> getmyAffliate(@Queries() Map<String, dynamic> query);
  @GET("/configs")
  Future<Configs> getConfigs(@Queries() Map<String, dynamic> query);
  @GET("/subscriptions")
  Future<SubscriptionModel> getMySubscriptions(
      @Queries() Map<String, dynamic> query);
  @POST("/subscriptions")
  Future<HttpResponse> CreateSubscription(@Body() Map<String, dynamic> body);
  @POST("/subscriptions/{id}")
  Future<SubscriptionModel> updateSubscription(
      @Path() String id, @Queries() Map<String, dynamic> query);
  @POST("/affliates")
  Future<AffliateModel> createsAffliate(@Body() Map<String, dynamic> body);
  @PUT("/users/{id}")
  Future<UserResponse> updateUser(
      @Path() String id, @Body() Map<String, dynamic> body);
  @PUT("/users/{id}")
  Future<UserResponse> updateTokensUsed(
      @Path() String id, @Body() Map<String, dynamic> body);

  @GET(Config.createInvoiceUrl)
  Future<DahabInvoice> createEdahab(@Queries() Map<String, dynamic> query);
  @GET(Config.verifyPamentPwUrl)
  Future<VerifyEdahabPayment> verifyEdahabPayment(
      @Queries() Map<String, dynamic> query);
  @POST(Config.authPremierWallet)
  Future<PwToken> authPW(
      @Queries() Map<String, dynamic> query,
      @Header("DeviceType") String deviceType,
      @Header("ChannelID") String chennelId,
      @Header("MachineID") String machineID,
      @Header("Authorization") String basicauth);
  @POST(Config.requestPaymentPWUrl)
  Future<PWreqResponse> requestPWpayment(
      @Body() Map<String, dynamic> body,
      @Header("DeviceType") String deviceType,
      @Header("ChannelID") String chennelId,
      @Header("MachineID") String machineID,
      @Header("Authorization") String bearerToken);
  @POST(Config.verifyPamentPwUrl)
  Future<PwVerify> verifyPWpayment(
      @Body() Map<String, dynamic> body,
      @Header("DeviceType") String deviceType,
      @Header("ChannelID") String chennelId,
      @Header("MachineID") String machineID,
      @Header("Authorization") String bearerToken);
}
