import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/ui/auth/signin_with%20_email_screen.dart';
import 'package:eurosom/ui/auth/signup_screen.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: commonAppBarWidget(context, title: "", showLeadingIcon: false),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ).paddingOnly(bottom: 24),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              24.height,
              Stack(
                alignment: Alignment.center,
                children: [
                  CommonCachedNetworkImage(walkThrough3,
                      fit: BoxFit.cover,
                      width: context.width() * 0.3,
                      radius: 16),
                ],
              ),
              60.height,
              Text('Welcome to Eurosom', style: boldTextStyle(size: 26)),
              24.height,
              Text(
                'We let you enjoy the technology \nwith as little as \Auth.',
                textAlign: TextAlign.center,
                style: secondaryTextStyle(height: 1.4),
              ),
              32.height,
              CommonButton(
                  buttonText: "Login",
                  width: context.width(),
                  onTap: () {
                    context.pushRoute(const SignWithEmailInRoute());
                  }),
              16.height,
              CommonButton(
                  buttonText: "Register",
                  width: context.width(),
                  onTap: () {
                    context.pushRoute(const SignUpRoute());
                  }),
            ],
          ).paddingAll(16),
        ),
      ),
    );
  }
}
