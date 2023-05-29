import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/constant.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
/*import 'package:otp_text_field/otp_field.dart' as otp;
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';*/

@RoutePage()
class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController token = TextEditingController();
  TextEditingController password = TextEditingController();

  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  TextEditingController otpController = TextEditingController();

  FocusNode otpFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    startTimer();
  }

  Widget otpField() {
    return Wrap(
      spacing: 24,
      children: [
        AppTextField(
          textFieldType: TextFieldType.EMAIL,
          controller: token,
          decoration: inputDecoration(context,
              labelText: "Enter Token",
              prefixIcon: ic_message.iconImage(size: 10).paddingAll(14)),
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.EMAIL,
          controller: password,
          decoration: inputDecoration(context,
              labelText: "Enter New Password",
              prefixIcon: ic_message.iconImage(size: 10).paddingAll(14)),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            resetSuccess: (e) async {
              print("ok");
              context.replaceRoute(const HomeDrawer());
            },
            resetFaliure: (e) {
              FlushbarHelper.createError(
                  message: (e.failure.map(
                      serverError: (e) => "Server error 😔 Please Try Again",
                      invalidData: (e) => e.message,
                      authException: (e) => e.message!))).show(context);
            });
      },
      child: Scaffold(
        appBar: commonAppBarWidget(context, changeIcon: true, title: ""),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Authentication Code', style: boldTextStyle(size: 24)),
              16.height,
              Text(mlAuthentication_msg!,
                  style: secondaryTextStyle(height: 1.5)),
              24.height,
              otpField(),
              32.height,
              Center(
                child: Text(
                  mlHave_no_code!,
                  style: boldTextStyle(
                      color: appStore.isDarkModeOn
                          ? white
                          : primaryColor.withOpacity(0.5)),
                  textAlign: TextAlign.center,
                ),
              ),
              80.height,
              CommonButton(
                buttonText: "Continue",
                width: context.width(),
                onTap: () {
                  if (token.text.length > 20 && password.text.length > 5) {
                    BlocProvider.of<AuthBloc>(context).add(
                        AuthEvent.resetPassword(token.text, password.text));
                  } else {
                    FlushbarHelper.createError(message: "enter valid details")
                        .show(context);
                  }
                },
              ),
            ],
          ).paddingAll(16.0),
        ),
      ),
    );
  }
}
