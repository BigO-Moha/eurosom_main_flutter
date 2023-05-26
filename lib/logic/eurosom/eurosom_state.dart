part of 'eurosom_bloc.dart';

@freezed
class EurosomState with _$EurosomState {
  const factory EurosomState.initial() = _Initial;
  const factory EurosomState.loading() = _Loading;
  const factory EurosomState.loadFailure(EurosomFailure eurosomFailure) =
      _LoadFailure;
  const factory EurosomState.getHomeBannerSuccess(BannerModel banners) =
      _GetHomeBannerSuccess;
  const factory EurosomState.getApplicationsSuccess(Appsmodel apps) =
      _GetAppsSuccess;
  const factory EurosomState.getPricingsSuccess(PricingModel pricings) =
      _GetPricingsSuccess;
  const factory EurosomState.getMySubscriptionSuccess(
      SubscriptionModel subscriptions) = _GetSubscriptionsSuccess;
  const factory EurosomState.createSubscriptionSuccess() =
      _createSubscriptionSuccess;
  const factory EurosomState.getAffliatesSuccess(AffliateModel affliateModel) =
      _GetAffliatesSuccess;
  const factory EurosomState.createAffliatesSuccess(
      AffliateModel affliateModel) = _CreateAffliatesSuccess;
  const factory EurosomState.updateUserSuccess(AuthModel authModel) =
      _UpdateUserSuccess;
}
