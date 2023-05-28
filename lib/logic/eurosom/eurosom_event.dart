part of 'eurosom_bloc.dart';

@freezed
class EurosomEvent with _$EurosomEvent {
  const factory EurosomEvent.getHomeSlider() = _GetHomeSliders;
  const factory EurosomEvent.getAllApplications() = _GetAllApplications;
  const factory EurosomEvent.getAppPricing(int id) = _GetAppPricing;
  const factory EurosomEvent.getMySubscriptions() = _GetAllSubscriptions;
  const factory EurosomEvent.payEvc(
          String number, double price, pm.Datum pricing_model, int app_id) =
      _PayEvc;
  const factory EurosomEvent.fetchAppSubscription(int app_id) =
      _FetchAppSubscription;
  const factory EurosomEvent.createSubscription(
          String evc_num, double amount, pm.Datum pricing, int app_id) =
      CreateSubscription;
  const factory EurosomEvent.updateSubscriptions(String id) =
      _UpdateSubscription;
  const factory EurosomEvent.createMyAffliate(AffliateModel affliateModel) =
      _CreateMyAffliate;
  const factory EurosomEvent.findAffliate(String id) = _FindAffliate;
  const factory EurosomEvent.getConfig() = _GetConfig;
  const factory EurosomEvent.updateUserTokens(int tokens) = _UpdateUserTokens;
  const factory EurosomEvent.getMyAffliateInfo() = _GetMyAffliateInfo;
  const factory EurosomEvent.updateUser(AuthModel userInfo) = _UpdateUser;
}
