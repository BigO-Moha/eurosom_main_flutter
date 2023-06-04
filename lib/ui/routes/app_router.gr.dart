// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:eurosom/models/pricing_model/datum.dart' as _i16;
import 'package:eurosom/ui/auth/forgot_password_screen.dart' as _i1;
import 'package:eurosom/ui/auth/reset_screen.dart' as _i2;
import 'package:eurosom/ui/auth/signin_screen.dart' as _i3;
import 'package:eurosom/ui/auth/signin_with%20_email_screen.dart' as _i4;
import 'package:eurosom/ui/auth/signup_screen.dart' as _i5;
import 'package:eurosom/ui/auth/splash_screen.dart' as _i6;
import 'package:eurosom/ui/auth/walkthrough_screen.dart' as _i7;
import 'package:eurosom/ui/chatGPT/screens/chatting_screen.dart' as _i8;
import 'package:eurosom/ui/chatGPT/screens/empty_screen.dart' as _i9;
import 'package:eurosom/ui/home/fragments/check.dart' as _i10;
import 'package:eurosom/ui/home/home_page.dart' as _i11;
import 'package:eurosom/ui/home/widgets/edahab_webview.dart' as _i12;
import 'package:eurosom/ui/home/widgets/pricing_page.dart' as _i13;
import 'package:flutter/material.dart' as _i15;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ForgotPasswordScreen(),
      );
    },
    ResetRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ResetScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SignInScreen(),
      );
    },
    SignWithEmailInRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SignWithEmailInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
    WalkThroughRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.WalkThroughScreen(),
      );
    },
    ChattingRoute.name: (routeData) {
      final args = routeData.argsAs<ChattingRouteArgs>(
          orElse: () => const ChattingRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChattingScreen(isDirect: args.isDirect),
      );
    },
    ChatGPTHome.name: (routeData) {
      final args = routeData.argsAs<ChatGPTHomeArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChatGPTHome(
          key: args.key,
          onTap: args.onTap,
          isScroll: args.isScroll,
        ),
      );
    },
    CheckSubscription.name: (routeData) {
      final args = routeData.argsAs<CheckSubscriptionArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.CheckSubscription(
          key: args.key,
          appId: args.appId,
        ),
      );
    },
    HomeDrawer.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.HomeDrawer(),
      );
    },
    DahaPayment.name: (routeData) {
      final args = routeData.argsAs<DahaPaymentArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DahaPayment(
          key: args.key,
          invoiceid: args.invoiceid,
          number: args.number,
          price: args.price,
          pricingmodel: args.pricingmodel,
          appid: args.appid,
        ),
      );
    },
    Pricingshow.name: (routeData) {
      final args = routeData.argsAs<PricingshowArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.Pricingshow(
          key: args.key,
          appId: args.appId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ResetScreen]
class ResetRoute extends _i14.PageRouteInfo<void> {
  const ResetRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i14.PageRouteInfo<void> {
  const SignInRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignWithEmailInScreen]
class SignWithEmailInRoute extends _i14.PageRouteInfo<void> {
  const SignWithEmailInRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignWithEmailInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignWithEmailInRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.WalkThroughScreen]
class WalkThroughRoute extends _i14.PageRouteInfo<void> {
  const WalkThroughRoute({List<_i14.PageRouteInfo>? children})
      : super(
          WalkThroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkThroughRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChattingScreen]
class ChattingRoute extends _i14.PageRouteInfo<ChattingRouteArgs> {
  ChattingRoute({
    bool isDirect = false,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ChattingRoute.name,
          args: ChattingRouteArgs(isDirect: isDirect),
          initialChildren: children,
        );

  static const String name = 'ChattingRoute';

  static const _i14.PageInfo<ChattingRouteArgs> page =
      _i14.PageInfo<ChattingRouteArgs>(name);
}

class ChattingRouteArgs {
  const ChattingRouteArgs({this.isDirect = false});

  final bool isDirect;

  @override
  String toString() {
    return 'ChattingRouteArgs{isDirect: $isDirect}';
  }
}

/// generated route for
/// [_i9.ChatGPTHome]
class ChatGPTHome extends _i14.PageRouteInfo<ChatGPTHomeArgs> {
  ChatGPTHome({
    _i15.Key? key,
    required dynamic Function(String) onTap,
    bool isScroll = false,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ChatGPTHome.name,
          args: ChatGPTHomeArgs(
            key: key,
            onTap: onTap,
            isScroll: isScroll,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatGPTHome';

  static const _i14.PageInfo<ChatGPTHomeArgs> page =
      _i14.PageInfo<ChatGPTHomeArgs>(name);
}

class ChatGPTHomeArgs {
  const ChatGPTHomeArgs({
    this.key,
    required this.onTap,
    this.isScroll = false,
  });

  final _i15.Key? key;

  final dynamic Function(String) onTap;

  final bool isScroll;

  @override
  String toString() {
    return 'ChatGPTHomeArgs{key: $key, onTap: $onTap, isScroll: $isScroll}';
  }
}

/// generated route for
/// [_i10.CheckSubscription]
class CheckSubscription extends _i14.PageRouteInfo<CheckSubscriptionArgs> {
  CheckSubscription({
    _i15.Key? key,
    required int appId,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          CheckSubscription.name,
          args: CheckSubscriptionArgs(
            key: key,
            appId: appId,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckSubscription';

  static const _i14.PageInfo<CheckSubscriptionArgs> page =
      _i14.PageInfo<CheckSubscriptionArgs>(name);
}

class CheckSubscriptionArgs {
  const CheckSubscriptionArgs({
    this.key,
    required this.appId,
  });

  final _i15.Key? key;

  final int appId;

  @override
  String toString() {
    return 'CheckSubscriptionArgs{key: $key, appId: $appId}';
  }
}

/// generated route for
/// [_i11.HomeDrawer]
class HomeDrawer extends _i14.PageRouteInfo<void> {
  const HomeDrawer({List<_i14.PageRouteInfo>? children})
      : super(
          HomeDrawer.name,
          initialChildren: children,
        );

  static const String name = 'HomeDrawer';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.DahaPayment]
class DahaPayment extends _i14.PageRouteInfo<DahaPaymentArgs> {
  DahaPayment({
    _i15.Key? key,
    required String invoiceid,
    required String number,
    required double price,
    required _i16.Datum pricingmodel,
    required int appid,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DahaPayment.name,
          args: DahaPaymentArgs(
            key: key,
            invoiceid: invoiceid,
            number: number,
            price: price,
            pricingmodel: pricingmodel,
            appid: appid,
          ),
          initialChildren: children,
        );

  static const String name = 'DahaPayment';

  static const _i14.PageInfo<DahaPaymentArgs> page =
      _i14.PageInfo<DahaPaymentArgs>(name);
}

class DahaPaymentArgs {
  const DahaPaymentArgs({
    this.key,
    required this.invoiceid,
    required this.number,
    required this.price,
    required this.pricingmodel,
    required this.appid,
  });

  final _i15.Key? key;

  final String invoiceid;

  final String number;

  final double price;

  final _i16.Datum pricingmodel;

  final int appid;

  @override
  String toString() {
    return 'DahaPaymentArgs{key: $key, invoiceid: $invoiceid, number: $number, price: $price, pricingmodel: $pricingmodel, appid: $appid}';
  }
}

/// generated route for
/// [_i13.Pricingshow]
class Pricingshow extends _i14.PageRouteInfo<PricingshowArgs> {
  Pricingshow({
    _i15.Key? key,
    required int appId,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          Pricingshow.name,
          args: PricingshowArgs(
            key: key,
            appId: appId,
          ),
          initialChildren: children,
        );

  static const String name = 'Pricingshow';

  static const _i14.PageInfo<PricingshowArgs> page =
      _i14.PageInfo<PricingshowArgs>(name);
}

class PricingshowArgs {
  const PricingshowArgs({
    this.key,
    required this.appId,
  });

  final _i15.Key? key;

  final int appId;

  @override
  String toString() {
    return 'PricingshowArgs{key: $key, appId: $appId}';
  }
}
