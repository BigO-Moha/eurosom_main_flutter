import 'package:bloc/bloc.dart';
import 'package:eurosom/models/absatractions/eurosom.dart';
import 'package:eurosom/models/affliate_model/affliate_model.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/banner_model/banner_model.dart';
import 'package:eurosom/models/failures/eurosom_failure.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nb_utils/nb_utils.dart';

part 'eurosom_event.dart';
part 'eurosom_state.dart';
part 'eurosom_bloc.freezed.dart';

@injectable
class EurosomBloc extends Bloc<EurosomEvent, EurosomState> {
  final IEurosomRepo _eurosomRepo;
  EurosomBloc(this._eurosomRepo) : super(_Initial()) {
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
            print(pricingState);
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
            final subscription = await _eurosomRepo.updateSubscription(
                e.id, e.subscriptionModel);
            final subscriptionState = subscription.fold(
                (l) => EurosomState.loadFailure(l),
                (r) => EurosomState.getMySubscriptionSuccess(r));
            emit(subscriptionState);
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
          updateUser: (e) async {});
    });
  }
}
