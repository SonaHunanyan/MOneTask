import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mone_task/constants/app_strings.dart';
import 'package:mone_task/store/auth_state/auth_state.dart';
import 'package:mone_task/theme/app_colors.dart';
import 'package:mone_task/theme/app_paddings.dart';
import 'package:mone_task/widgets/auth_mode_toggler.dart';
import 'package:mone_task/widgets/keyboard_dismisser.dart';
import '../../widgets/mone_text_field.dart';
import 'package:mone_task/theme/constants.dart' as Constants;

class SignUpSignInPage extends StatefulWidget {
  const SignUpSignInPage({Key? key}) : super(key: key);

  @override
  State<SignUpSignInPage> createState() => _SignUpSignInPageState();
}

class _SignUpSignInPageState extends State<SignUpSignInPage> {
  final _authState = GetIt.I<AuthState>();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismiss(
      child: Scaffold(
        backgroundColor: AppColors.darkBlueColor,
        body: Padding(
          padding: AppPaddings.scaffoldPadding * Constants.grh(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BRAND \n LOGO ',
                  style: TextStyle(
                      color: AppColors.primaryLightColor,
                      fontSize: 22 * Constants.grw(context),
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              Observer(builder: (context) {
                return MOneTextField(
                  controller: _authState.userNameController,
                  hint: AppStrings.username,
                  errorMessage: _authState.usernameErrorMessage,
                  onChange: (v) {
                    _authState.validateUsername();
                  },
                );
              }),
              Observer(builder: (context) {
                return MOneTextField(
                  controller: _authState.passwordController,
                  hint: AppStrings.password,
                  errorMessage: _authState.passwordErrorMessage,
                  onChange: (v) {
                    _authState.validatePassword();
                  },
                );
              }),
              SizedBox(
                height: 30 * Constants.grh(context),
              ),
              const AuthModeToggler(),
              Container(
                  padding: EdgeInsets.only(top: 30 * Constants.grh(context)),
                  alignment: Alignment.center,
                  child: Text('Forgot Password?',
                      style: TextStyle(
                        fontSize: 15 * Constants.grw(context),
                        color: AppColors.primaryColor,
                      ))),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
