import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mone_task/store/auth_state/auth_state.dart';
import 'package:mone_task/theme/app_colors.dart';
import 'package:mone_task/theme/app_paddings.dart';
import 'package:mone_task/theme/constants.dart' as Constants;
import 'package:mone_task/widgets/keyboard_dismisser.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _authState = GetIt.I<AuthState>();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismiss(
        child: Scaffold(
            backgroundColor: AppColors.darkBlueColor,
            body: Padding(
                padding: AppPaddings.scaffoldPadding * Constants.grh(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 40 * Constants.grh(context)),
                        child: GestureDetector(
                            onTap: _authState.logOut,
                            child: Text('LOG OUT',
                                style: TextStyle(
                                    color: AppColors.primaryLightColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20 * Constants.grw(context))))),
                    Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.only(top: 80 * Constants.grh(context)),
                        child: Text('Home Page',
                            style: TextStyle(
                                color: AppColors.primaryLightColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 35 * Constants.grw(context))))
                  ],
                ))));
  }
}
