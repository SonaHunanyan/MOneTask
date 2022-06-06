import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mone_task/constants/error_messages.dart';
import 'package:mone_task/constants/sign_in_sing_up_mode.dart';
import 'package:mone_task/model/user.dart';
import 'package:mone_task/router/mone_router.dart';
import 'package:mone_task/router/router.dart';
import 'package:mone_task/storage/storage.dart';
part 'auth_state.g.dart';

class AuthState = _AuthState with _$AuthState;

abstract class _AuthState with Store {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _storage = GetIt.I<Storage>();

  @observable
  String? usernameErrorMessage;
  @observable
  String? passwordErrorMessage;

  @observable
  SignInSingUpMode mode = SignInSingUpMode.signIn;

  /// Set sign in/ sign up page mode
  @action
  void setPageView(SignInSingUpMode newMode) {
    if (newMode == mode) {
      switch (newMode) {
        case SignInSingUpMode.signIn:
          signIn();
          break;
        case SignInSingUpMode.singUp:
          signUp();
          break;
      }
    }
    mode = newMode;
  }

  Future<void> signIn() async {
    if (hasError) {
      log('has login error', name: 'sign in');
      return;
    }
    final user = User(
      password: passwordController.text,
      username: userNameController.text,
    );
    final incomingUser = _storage.getUser();
    if (user == incomingUser) {
      moneRouter.push(HomeRoute());
    }
  }

  Future<void> signUp() async {
    if (hasError) {
      log('has registration error', name: 'sign up');
      return;
    }
    final user = User(
      password: passwordController.text,
      username: userNameController.text,
    );
    await _storage.saveUser(
      user: user,
    );
    moneRouter.push(HomeRoute());
  }

  @computed
  bool get hasError =>
      userNameController.text.isEmpty ||
      passwordController.text.isEmpty ||
      usernameErrorMessage != null ||
      passwordErrorMessage != null;

  /// Check is username valid
  @action
  void validateUsername() {
    final data = userNameController.text;
    if (data.isEmpty || data.length < 5) {
      usernameErrorMessage = ErrorMessages.usernameErrorMessage;
    } else {
      usernameErrorMessage = null;
    }
  }

  /// Check is password valid
  @action
  void validatePassword() {
    final data = passwordController.text;
    if (data.isEmpty || data.length < 7) {
      passwordErrorMessage = ErrorMessages.passwordErrorMessage;
    } else {
      passwordErrorMessage = null;
    }
  }

  @computed
  bool get hasUsernameError =>
      usernameErrorMessage != null && userNameController.text.isEmpty;

  @computed
  bool get hasPasswordError =>
      passwordErrorMessage != null && passwordController.text.isEmpty;

  /// If user already log in then push home screen else push sign up/ sign in screen
  @action
  void initialRoute() {
    final incomingUser = _storage.getUser();
    if (incomingUser != null) {
      moneRouter.push(HomeRoute());
    } else {
      moneRouter.push(const SignUpSignInRoute());
    }
  }

  /// Check if the parent widget is root then pop else push sign up/ sign in screen
  @action
  void logOut() {
    clearForm();
    final isParentRoot = moneRouter.current.parent?.router.isRoot ?? false;
    if (isParentRoot) {
      moneRouter.push(const SignUpSignInRoute());
    }
    moneRouter.pop();
  }

  /// Cleare text controllers
  @action
  clearForm() {
    usernameErrorMessage = null;
    passwordErrorMessage = null;
    userNameController.clear();
    passwordController.clear();
  }
}
