import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/models/login/login.dart';
import 'package:eurosom/ui/auth/forgot_password_screen.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

@RoutePage()
class SignWithEmailInScreen extends StatefulWidget {
  @override
  _SignWithEmailInScreenState createState() => _SignWithEmailInScreenState();
}

class _SignWithEmailInScreenState extends State<SignWithEmailInScreen> {
  TextEditingController phoneCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode emailfocus = FocusNode();
  FocusNode passwordfocus = FocusNode();

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.checkAppState());
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
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              authenticated: (s) async {
                // if (kIsWeb) {
                //   sleep(const Duration(seconds: 2));
                //   html.window
                //       .open('http://localhost:54123/home-drawer', 'new tab');
                // }
                context.replaceRoute(const HomeDrawer());
                // BlocProvider.of<AuthBloc>(context)
                //     .add(const AuthEvent.getAuthState());
                // Future.delayed(const Duration(seconds: 1))
                //     .then((value) =>);
              },
              unAuthenticated: (e) {
                FlushbarHelper.createError(
                    message: (e.faliure.map(
                        serverError: (e) => "Server error 😔 Please Try Again",
                        invalidData: (e) => e.message,
                        authException: (e) => e.message!))).show(context);
              });
        },
        child: SafeArea(
          child: Scaffold(
            appBar: commonAppBarWidget(context, changeIcon: true, title: ""),
            bottomNavigationBar: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "By sign in, you agree to the ",
                style: secondaryTextStyle(height: 1.3),
                children: [
                  TextSpan(
                      text: "Eurosom Terms & Conditions. Reward Policy,",
                      style: boldTextStyle(size: 14)),
                  TextSpan(text: " and ", style: secondaryTextStyle()),
                  TextSpan(
                      text: "Privacy Policy", style: boldTextStyle(size: 14)),
                ],
              ),
            ).paddingAll(24),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign In to Eurosom', style: boldTextStyle(size: 24)),
                  28.height,
                  commonSocialLoginButton(context),
                  28.height,
                  Row(
                    children: [
                      Container(color: gray.withOpacity(0.2), height: 1)
                          .expand(),
                      12.width,
                      Text('Or sign in with email',
                          style: secondaryTextStyle()),
                      12.width,
                      Container(color: gray.withOpacity(0.2), height: 1)
                          .expand(),
                    ],
                  ),
                  28.height,
                  IntlPhoneField(
                    disableLengthCheck: true,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    /**/
                    initialCountryCode: 'SO',
                    onChanged: (phone) {
                      phoneCont.text = phone.completeNumber.split("+").last;
                    },
                  ),
                  16.height,
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    controller: passwordCont,
                    focus: passwordfocus,
                    suffixPasswordVisibleWidget:
                        ic_show.iconImage(size: 10).paddingAll(14),
                    suffixPasswordInvisibleWidget:
                        ic_hide.iconImage(size: 10).paddingAll(14),
                    decoration: inputDecoration(context,
                        labelText: "Password",
                        prefixIcon: ic_lock.iconImage(size: 10).paddingAll(14)),
                  ),
                  16.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.pushRoute(const ForgotPasswordRoute());
                        },
                        child: Text('Forgot Password?',
                            style: boldTextStyle(
                                color: appStore.isDarkModeOn
                                    ? white
                                    : primaryColor)),
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushRoute(const SignUpRoute());
                        },
                        child: Text('create new account?',
                            style: boldTextStyle(
                                color: appStore.isDarkModeOn
                                    ? white
                                    : primaryColor)),
                      ),
                    ],
                  ),
                  16.height,
                  CommonButton(
                    buttonText: "Sign In",
                    width: context.width(),
                    onTap: () async {
                      if (passwordCont.text.length > 5 &&
                          phoneCont.text.length > 8) {
                        context.read<AuthBloc>().add(
                            AuthEvent.loginWithEmailAndPassword(LoginData(
                                identifier: phoneCont.text,
                                password: passwordCont.text)));
                      } else {
                        FlushbarHelper.createError(
                                message: "Enter Valid Login Data")
                            .show(context);
                      }
                    },
                  ),
                ],
              ).paddingAll(16),
            ),
          ),
        ),
      ),
    );
  }
}
