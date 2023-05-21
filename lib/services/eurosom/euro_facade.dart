import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/absatractions/eurosom.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/services/eurosom/euro_api.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEurosomRepo)
class EurosomFacade implements IEurosomRepo {
  final EuroApiService _apiService;

  EurosomFacade(this._apiService);
  @override
  Future<Either<EurosomFailure, SubscriptionModel>> createSubscription(
      Map<String, dynamic> subscription) async {
    try {
      final subscripe = await _apiService.CreateSubscription(subscription);
      return right(subscripe);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.postError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, Appsmodel>> getAllApplications() async {
    try {
      final apps = await _apiService.getAllApplications({
        "populate": ['icon']
      });
      return right(apps);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, PricingModel>> getAllPricings(int appId) async {
    try {
      final pricings = await _apiService.getAllPricings({
        "filters": {
          "application": {
            "id": {"\$eq": appId}
          }
        },
      });
      return right(pricings);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, BannerModel>> getHomeBanners() async {
    try {
      final banners = await _apiService.getHomeSliders({
        "populate": ['banner']
      });
      return right(banners);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, SubscriptionModel>> getMySubscriptions() async {
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r.user);
    try {
      final mySubscriptions = await _apiService.getMySubscriptions({
        "filters": {
          "user": {
            "id": {"\$eq": user!.id!.toString()}
          }
        },
      });
      return right(mySubscriptions);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, SubscriptionModel>> updateSubscription(
      SubscriptionModel subscriptionModel) async {
    try {
      final Subscription =
          await _apiService.getMySubscriptions(subscriptionModel.toJson());
      return right(Subscription);
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, AuthModel>> updateUser(AuthModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
