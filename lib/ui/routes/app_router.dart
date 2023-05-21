import 'package:auto_route/auto_route.dart';
import 'package:eurosom/ui/auth/signin_screen.dart';
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
        MaterialRoute(page: SplashRoute.page, initial: true),
      ];
}
