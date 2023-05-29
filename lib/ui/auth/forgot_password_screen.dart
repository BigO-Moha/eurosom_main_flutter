import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailCont = TextEditingController();

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
    return Scaffold(
      appBar: commonAppBarWidget(context, changeIcon: false, title: ""),
      bottomNavigationBar: CommonButton(
          buttonText: "Continue",
          margin: 16,
          width: context.width(),
          onTap: () {
            if (emailCont.text.length > 5) {
              context
                  .read<AuthBloc>()
                  .add(AuthEvent.sendForgetToken(emailCont.text));
              context.pushRoute(const ResetRoute());
            } else {
              FlushbarHelper.createError(message: "Enter valid email")
                  .show(context);
            }
          }).paddingOnly(bottom: 24),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            24.height,
            commonImageWidget(image: forgot_password),
            42.height,
            Text('Forgot Password?', style: boldTextStyle(size: 24)),
            16.height,
            Text(
              'Don\'t worry! Please enter the email below \nassociated with your account.',
              textAlign: TextAlign.center,
              style: secondaryTextStyle(height: 1.5),
            ),
            32.height,
            AppTextField(
              textFieldType: TextFieldType.EMAIL,
              controller: emailCont,
              decoration: inputDecoration(context,
                  labelText: "Email",
                  prefixIcon: ic_message.iconImage(size: 10).paddingAll(14)),
            ),
          ],
        ).paddingAll(16),
      ),
    );
  }
}
