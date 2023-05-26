import 'package:dartz/dartz.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/configs/configs.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/models/user_response/user_response.dart';
import 'package:eurosom/services/core/config.dart';

abstract class IEurosomRepo {
  Future<Either<EurosomFailure, BannerModel>> getHomeBanners();
  Future<Either<EurosomFailure, Appsmodel>> getAllApplications();
  Future<Either<EurosomFailure, PricingModel>> getAllPricings(int appId);
  Future<Either<EurosomFailure, SubscriptionModel>> getMySubscriptions();
  Future<Either<EurosomFailure, SubscriptionModel>> getAppSubscriptions(
      int appId);
  Future<Either<EurosomFailure, Unit>>? payEvc(String account, double amount);
  Future<Either<EurosomFailure, Unit>> payEdahab(String account, double amount);
  Future<Either<EurosomFailure, Unit>> verifyEdahab(
      String account, double amount);
  Future<Either<EurosomFailure, Unit>> createSubscription(
      Map<String, dynamic> subscription);
  Future<Either<EurosomFailure, Configs>> getConfigs();
  Future<Either<EurosomFailure, SubscriptionModel>> updateSubscription(
      String subscriptionId);
  Future<Either<EurosomFailure, AffliateModel>> createAffliate(
      AffliateModel subscriptionModel);
  Future<Either<EurosomFailure, AffliateModel>> getMyAffliate();
  Future<Either<EurosomFailure, UserResponse>> updateUser(AuthModel user);
  Future<Either<EurosomFailure, UserResponse>> updateTokensUsed(int tokens);
}
