import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/ui/auth/walkthrough_screen.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    // await 2.seconds.delay.then((value) {
    //   // WalkThroughScreen().launch(context);
    // });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            unAuthenticated: (e) async {
              print("unAuth");
              context.replaceRoute(const SignInRoute());
            },
            authenticated: (e) async {
              print("auth");
              context.replaceRoute(const HomeDrawer());
            },
            onboardingShow: (e) async {
              print("walktrough");
              context.replaceRoute(const SignInRoute());
            });
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonCachedNetworkImage(splash_logo,
                    fit: BoxFit.fill,
                    color: greenColor,
                    width: 300,
                    height: 300),
                24.height,
                const Center(child: CircularProgressIndicator()),
                16.height,
                Text('Eurosom', style: boldTextStyle(size: 24)),
              ],
            ),
          ),
        );
      },
    );
  }
}
