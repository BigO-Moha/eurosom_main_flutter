import 'package:dartz/dartz.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';

abstract class IEurosomRepo {
  Future<Either<EurosomFailure, BannerModel>> getHomeBanners();
  Future<Either<EurosomFailure, Appsmodel>> getAllApplications();
  Future<Either<EurosomFailure, PricingModel>> getAllPricings(int appId);
  Future<Either<EurosomFailure, SubscriptionModel>> getMySubscriptions();
  Future<Either<EurosomFailure, SubscriptionModel>> getAppSubscriptions(
      int appId);
  Future<Either<EurosomFailure, Unit>> payEvc(String account, double amount);
  Future<Either<EurosomFailure, Unit>> payEdahab(String account, double amount);
  Future<Either<EurosomFailure, Unit>> verifyEdahab(
      String account, double amount);
  Future<Either<EurosomFailure, SubscriptionModel>> createSubscription(
      Map<String, dynamic> subscription);
  Future<Either<EurosomFailure, SubscriptionModel>> updateSubscription(
      String subscriptionId, SubscriptionModel subscriptionModel);
  Future<Either<EurosomFailure, AffliateModel>> createAffliate(
      AffliateModel subscriptionModel);
  Future<Either<EurosomFailure, AffliateModel>> getMyAffliate();
  Future<Either<EurosomFailure, AuthModel>> updateUser(AuthModel user);
}
