import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/absatractions/eurosom.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/configs/configs.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/models/user_response/user_response.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/services/eurosom/euro_api.dart';
import 'package:injectable/injectable.dart';
import 'package:merchant_evc_plus/merchant_evc_plus.dart';

@LazySingleton(as: IEurosomRepo)
class EurosomFacade implements IEurosomRepo {
  final EuroApiService _apiService;

  EurosomFacade(this._apiService);
  @override
  Future<Either<EurosomFailure, Unit>> createSubscription(
      Map<String, dynamic> subscription) async {
    try {
      final subscripe = await _apiService.CreateSubscription(subscription);
      return right(unit);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
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
        "populate": ['image']
      });
      return right(apps);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
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
        "populate": ['application']
      });
      print(pricings.toJson());
      return right(pricings);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
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
      if (e.type == DioErrorType.response) {
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
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, SubscriptionModel>> getAppSubscriptions(
      int appId) async {
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r.user);
    try {
      final mySubscriptions = await _apiService.getMySubscriptions({
        "filters": {
          "\$and": [
            {
              "user": {
                "id": {"\$eq": user!.id},
              }
            },
            {
              "app": {
                "id": {
                  "\$eq": appId,
                }
              },
            },
          ],
        },
        "populate": ['user', 'app']
      });
      return right(mySubscriptions);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, SubscriptionModel>> updateSubscription(
      String subscriptionId) async {
    try {
      final Subscription = await _apiService
          .updateSubscription(subscriptionId, {'status': "expired"});
      return right(Subscription);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, UserResponse>> updateUser(AuthModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Either<EurosomFailure, AffliateModel>> createAffliate(
      AffliateModel affliateModel) async {
    try {
      final affliate =
          await _apiService.createsAffliate(affliateModel.toJson());
      return right(affliate);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.postError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, AffliateModel>> getMyAffliate() async {
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r.user);
    try {
      final myAffliates = await _apiService.getmyAffliate({
        "filters": {
          "user": {
            "id": {"\$eq": user!.id!.toString()}
          }
        },
        "populate": ['user', 'application']
      });
      return right(myAffliates);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, Unit>> payEvc(
      String account, double amount) async {
    Either<EurosomFailure, Unit>? returnValue;
    try {
      const merchantEvcPlus = MerchantEvcPlus(
        apiKey: 'API-1685988125AHX', // API KEY
        merchantUid: 'M0912379', // Merchant UID
        apiUserId: '1005011', // API USER ID
      );

      var rng = Random();
      int? num;
      for (var i = 0; i < 10; i++) {
        num = rng.nextInt(100);
      }

      final transactionInfo = TransactionInfo(
          payerPhoneNumber: account,
          amount: amount,
          invoiceId: num!.toString());

      await merchantEvcPlus.makePayment(
        transactionInfo: transactionInfo,
        onSuccess: () {
          returnValue = right(unit);
        },
        onFailure: (error) {
          if (error == "RCS_USER_IS_NOT_AUTHZ_TO_ACCESS_API") {
            returnValue = right(unit);
          } else {
            returnValue = left(EurosomFailure.paymentError(error));
          }
        },
      );
    } catch (e) {
      return left(const EurosomFailure.paymentError("error"));
    }

    return returnValue!;
  }

  @override
  Future<Either<EurosomFailure, Unit>> payEdahab(
      String account, double amount) {
    // TODO: implement payEdahab
    throw UnimplementedError();
  }

  @override
  Future<Either<EurosomFailure, Unit>> verifyEdahab(
      String account, double amount) {
    // TODO: implement verifyEdahab
    throw UnimplementedError();
  }

  @override
  Future<Either<EurosomFailure, Configs>> getConfigs() async {
    try {
      final configs = await _apiService.getConfigs({});
      return right(configs);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }

  @override
  Future<Either<EurosomFailure, UserResponse>> updateTokensUsed(
      int token_count) async {
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r.user);
    try {
      final tokens = await _apiService
          .updateTokensUsed(user!.id!.toString(), {"token_count": token_count});
      return right(tokens);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(EurosomFailure.fetchError(
            e.response!.data["error"]["message"].toString()));
      } else {
        return left(const EurosomFailure.serverError());
      }
    }
  }
}
