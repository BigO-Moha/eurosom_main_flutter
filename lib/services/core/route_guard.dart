import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final user = getIt<IAuthFacade>().getSignedUser();
    user.fold((l) {
      print(resolver.route);
      router.push(const SignWithEmailInRoute());
    }, (r) {
      resolver.next(true);
    });
  }
}