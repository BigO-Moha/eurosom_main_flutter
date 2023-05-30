import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/models/register/register.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fNameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  TextEditingController affliateId = TextEditingController();
  String phoneNum = '';
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  FocusNode affliateFocus = FocusNode();

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
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              authenticated: (s) {
                context.replaceRoute(const HomeDrawer());
              },
              unAuthenticated: (e) {
                FlushbarHelper.createError(
                    message: (e.faliure.map(
                        serverError: (e) => "Server error 😔 Please Try Again",
                        invalidData: (e) => e.message,
                        authException: (e) => e.message!))).show(context);
              });
        },
        child: Scaffold(
          appBar: commonAppBarWidget(context, changeIcon: true, title: ""),
          bottomNavigationBar: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "By continuing, you agree to the ",
              style: secondaryTextStyle(height: 1.3),
              children: [
                TextSpan(
                  text: "Stock Platform Terms & Conditions. Reward Policy,",
                  style: boldTextStyle(size: 14),
                ),
                TextSpan(
                  text: " and ",
                  style: secondaryTextStyle(),
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: boldTextStyle(size: 14),
                ),
              ],
            ),
          ).paddingOnly(bottom: 24, left: 24, right: 24),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to Eurosom', style: boldTextStyle(size: 24)),
                16.height,
                Text(
                    'Create a commintent-free profile to explore stock products and rewards.',
                    style: secondaryTextStyle()),

                // commonSocialLoginButton(context),
                20.height,
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
                    phoneNum = phone.completeNumber.split("+").last;
                    print(phoneNum);
                  },
                ),

                16.height,
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  controller: fNameCont,
                  nextFocus: nameFocus,
                  decoration: inputDecoration(context,
                      labelText: "Full name",
                      prefixIcon:
                          ic_profile.iconImage(size: 10).paddingAll(14)),
                ),

                16.height,
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  controller: emailCont,
                  focus: emailFocus,
                  nextFocus: passwordFocus,
                  decoration: inputDecoration(context,
                      labelText: "Email",
                      prefixIcon:
                          ic_message.iconImage(size: 10).paddingAll(14)),
                ),
                16.height,
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  controller: passwordCont,
                  focus: passwordFocus,
                  suffixPasswordVisibleWidget:
                      ic_show.iconImage(size: 10).paddingAll(14),
                  suffixPasswordInvisibleWidget:
                      ic_hide.iconImage(size: 10).paddingAll(14),
                  decoration: inputDecoration(context,
                      labelText: "Password",
                      prefixIcon: ic_lock.iconImage(size: 10).paddingAll(14)),
                ),
                16.height,
                AppTextField(
                  textFieldType: TextFieldType.NUMBER,
                  controller: affliateId,
                  focus: affliateFocus,
                  nextFocus: passwordFocus,
                  decoration: inputDecoration(context,
                      labelText: "affliate",
                      prefixIcon:
                          ic_message.iconImage(size: 10).paddingAll(14)),
                ),
                32.height,
                CommonButton(
                    buttonText: "Continue",
                    width: context.width(),
                    onTap: () async {
                      if (emailCont != null &&
                          passwordCont.text.length > 5 &&
                          phoneNum.length > 8 &&
                          fNameCont.text.length > 2) {
                        BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.signUpWithEmailAndPassword(RegisterData(
                                email: emailCont.text,
                                password: passwordCont.text,
                                username: phoneNum,
                                affliate: affliateId.text.isNotEmpty
                                    ? affliateId.text.toInt()
                                    : null,
                                name: fNameCont.text)));
                      } else {
                        FlushbarHelper.createError(
                                message:
                                    "fill the form with the right info please")
                            .show(context);
                      }
                    }),
              ],
            ).paddingAll(16),
          ),
        ),
      ),
    );
  }
}
