import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/ui/auth/forgot_password_screen.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class SignWithEmailInScreen extends StatefulWidget {
  @override
  _SignWithEmailInScreenState createState() => _SignWithEmailInScreenState();
}

class _SignWithEmailInScreenState extends State<SignWithEmailInScreen> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode emailfocus = FocusNode();
  FocusNode passwordfocus = FocusNode();

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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            authenticated: (s) {
              print("logged IN");
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
                    text: "Stock Platform Terms & Conditions. Reward Policy,",
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
                Text('Sign In to Investor', style: boldTextStyle(size: 24)),
                28.height,
                commonSocialLoginButton(context),
                28.height,
                Row(
                  children: [
                    Container(color: gray.withOpacity(0.2), height: 1).expand(),
                    12.width,
                    Text('Or sign in with email', style: secondaryTextStyle()),
                    12.width,
                    Container(color: gray.withOpacity(0.2), height: 1).expand(),
                  ],
                ),
                28.height,
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  controller: emailCont,
                  focus: emailfocus,
                  nextFocus: passwordfocus,
                  decoration: inputDecoration(context,
                      labelText: "Email",
                      prefixIcon:
                          ic_message.iconImage(size: 10).paddingAll(14)),
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
                TextButton(
                  onPressed: () {
                    ForgotPasswordScreen().launch(context);
                  },
                  child: Text('Forgot Password?',
                      style: boldTextStyle(
                          color: appStore.isDarkModeOn ? white : primaryColor)),
                ),
                16.height,
                CommonButton(
                  buttonText: "Sign In",
                  width: context.width(),
                  onTap: () {
                    // DashBoardScreen().launch(context);
                  },
                ),
              ],
            ).paddingAll(16),
          ),
        ),
      ),
    );
  }
}
