import 'package:bloc/bloc.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/absatractions/eurosom.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/pricing_model/datum.dart' as pm;
import 'package:eurosom/models/post_subscription/data.dart' as dm;
import 'package:eurosom/models/configs/configs.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/post_subscription/post_subscription.dart';

import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/models/user_response/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nb_utils/nb_utils.dart';

part 'eurosom_event.dart';
part 'eurosom_state.dart';
part 'eurosom_bloc.freezed.dart';

@injectable
class EurosomBloc extends Bloc<EurosomEvent, EurosomState> {
  final IEurosomRepo _eurosomRepo;
  final IAuthFacade _authFacade;
  EurosomBloc(this._eurosomRepo, this._authFacade) : super(const _Initial()) {
    on<EurosomEvent>((event, emit) async {
      await event.map(
          getHomeSlider: (e) async {
            emit(const EurosomState.loading());
            final banners = await _eurosomRepo.getHomeBanners();
            final homeBanner = banners.fold((l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getHomeBannerSuccess(r));
            emit(homeBanner);
          },
          getAllApplications: (e) async {
            emit(const EurosomState.loading());
            final apps = await _eurosomRepo.getAllApplications();
            final appsState = apps.fold((l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getApplicationsSuccess(r));
            emit(appsState);
          },
          getAppPricing: (e) async {
            emit(const EurosomState.loading());
            final pricing = await _eurosomRepo.getAllPricings(e.id);

            final pricingState = pricing.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getPricingsSuccess(r));

            emit(pricingState);
          },
          getMySubscriptions: (e) async {
            emit(const EurosomState.loading());
            final subscription = await _eurosomRepo.getMySubscriptions();
            final subscriptionState = subscription.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getMySubscriptionSuccess(r));
            emit(subscriptionState);
          },
          fetchAppSubscription: (e) async {
            emit(const EurosomState.loading());
            final apps = await _eurosomRepo.getAppSubscriptions(e.app_id);
            final appsState = apps.fold((l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getMySubscriptionSuccess(r));
            emit(appsState);
          },
          updateSubscriptions: (e) async {
            emit(const EurosomState.loading());
            await _eurosomRepo.updateSubscription(
              e.id,
            );
          },
          createMyAffliate: (e) async {
            emit(const EurosomState.loading());
            final affliate = await _eurosomRepo.createAffliate(e.affliateModel);
            final affliateState = affliate.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.createAffliatesSuccess(r));
            emit(affliateState);
          },
          findAffliate: (e) async {},
          getMyAffliateInfo: (e) async {
            emit(const EurosomState.loading());
            final affliate = await _eurosomRepo.getMyAffliate();
            final affliateState = affliate.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getAffliatesSuccess(r));
            emit(affliateState);
          },
          updateUser: (e) async {},
          createSubscription: (e) async {
            final uid = await _authFacade
                .getSignedUser()
                .fold((l) => null, (r) => r.user!.id!);
            Map<String, int> val = {"monthly": 1, "yearly": 12};
            int type = val[e.pricing.duration!]!;
            var cDate = DateTime.now();
            final subscription = await _eurosomRepo.createSubscription(
                PostSubscription(
                        data: dm.Data(
                            account: e.evc_num,
                            amount: e.amount,
                            paymentMethod: 'EVC',
                            startDate: cDate.toString(),
                            user: uid,
                            expiryDate: DateTime(
                                    cDate.year, cDate.month + type, cDate.day)
                                .toString(),
                            app: e.app_id.toString(),
                            status: 'active'))
                    .toJson());

            final subscriptionState = subscription.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => const EurosomState.createSubscriptionSuccess());
            emit(subscriptionState);
          },
          getConfig: (e) async {
            final configs = await _eurosomRepo.getConfigs();
            final configsState = configs.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getConfigSuccess(r));
            emit(configsState);
          },
          updateUserTokens: (e) async {
            emit(const EurosomState.loading());
            final userTokens = await _eurosomRepo.updateTokensUsed(e.tokens);
            final userTokensState = userTokens.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.updateUserSuccess(r));
            emit(userTokensState);
          },
          payEvc: (e) async {
            emit(const EurosomState.paymentLoading());
            final evcPayment = await _eurosomRepo.payEvc(e.number, e.price);
            if (evcPayment!.isRight()) {
              add(CreateSubscription(
                  e.number, e.price, e.pricing_model, e.app_id));
            } else {
              emit(const EurosomState.evcPaymentFailure());
            }
          });
    });
  }
}
