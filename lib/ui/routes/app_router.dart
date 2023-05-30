import 'package:auto_route/auto_route.dart';
import 'package:eurosom/services/core/route_guard.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        MaterialRoute(
          page: SignUpRoute.page,
        ),
        MaterialRoute(page: SignInRoute.page),
        MaterialRoute(page: WalkThroughRoute.page),
        MaterialRoute(page: SignWithEmailInRoute.page),
        MaterialRoute(page: ForgotPasswordRoute.page),
        MaterialRoute(page: ResetRoute.page),
        MaterialRoute(
            page: HomeDrawer.page, guards: <AutoRouteGuard>[AuthGuard()]),
        MaterialRoute(
            page: ChattingRoute.page, guards: <AutoRouteGuard>[AuthGuard()]),
        MaterialRoute(
            keepHistory: false,
            page: CheckSubscription.page,
            guards: <AutoRouteGuard>[AuthGuard()]),
        MaterialRoute(
            keepHistory: false,
            page: Pricingshow.page,
            guards: <AutoRouteGuard>[AuthGuard()]),
        MaterialRoute(page: SplashRoute.page, initial: true),
      ];
}
