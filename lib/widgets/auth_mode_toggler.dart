import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mone_task/constants/sign_in_sing_up_mode.dart';
import 'package:mone_task/store/auth_state/auth_state.dart';
import 'package:mone_task/theme/app_colors.dart';

class AuthModeToggler extends StatefulWidget {
  const AuthModeToggler({Key? key}) : super(key: key);

  @override
  State<AuthModeToggler> createState() => _AuthModeTogglerState();
}

class _AuthModeTogglerState extends State<AuthModeToggler>
    with SingleTickerProviderStateMixin {
  late final _tabBarController;

  final _authState = GetIt.I<AuthState>();

  @override
  void initState() {
    _tabBarController = TabController(
      initialIndex: 0,
      length: SignInSingUpMode.values.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: TabBar(
        onTap: (index) {
          _authState.setPageView(
            SignInSingUpMode.values[index],
          );
        },
        controller: _tabBarController,
        labelPadding: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        tabs: [
          for (final mode in SignInSingUpMode.values)
            Tab(
              height: 40,
              child: Text(mode.nameValue),
            ),
        ],
        indicatorColor: AppColors.primaryColor,
        indicator: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
