// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthState on _AuthState, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_AuthState.hasError'))
      .value;
  Computed<bool>? _$hasUsernameErrorComputed;

  @override
  bool get hasUsernameError => (_$hasUsernameErrorComputed ??= Computed<bool>(
          () => super.hasUsernameError,
          name: '_AuthState.hasUsernameError'))
      .value;
  Computed<bool>? _$hasPasswordErrorComputed;

  @override
  bool get hasPasswordError => (_$hasPasswordErrorComputed ??= Computed<bool>(
          () => super.hasPasswordError,
          name: '_AuthState.hasPasswordError'))
      .value;

  late final _$usernameErrorMessageAtom =
      Atom(name: '_AuthState.usernameErrorMessage', context: context);

  @override
  String? get usernameErrorMessage {
    _$usernameErrorMessageAtom.reportRead();
    return super.usernameErrorMessage;
  }

  @override
  set usernameErrorMessage(String? value) {
    _$usernameErrorMessageAtom.reportWrite(value, super.usernameErrorMessage,
        () {
      super.usernameErrorMessage = value;
    });
  }

  late final _$passwordErrorMessageAtom =
      Atom(name: '_AuthState.passwordErrorMessage', context: context);

  @override
  String? get passwordErrorMessage {
    _$passwordErrorMessageAtom.reportRead();
    return super.passwordErrorMessage;
  }

  @override
  set passwordErrorMessage(String? value) {
    _$passwordErrorMessageAtom.reportWrite(value, super.passwordErrorMessage,
        () {
      super.passwordErrorMessage = value;
    });
  }

  late final _$modeAtom = Atom(name: '_AuthState.mode', context: context);

  @override
  SignInSingUpMode get mode {
    _$modeAtom.reportRead();
    return super.mode;
  }

  @override
  set mode(SignInSingUpMode value) {
    _$modeAtom.reportWrite(value, super.mode, () {
      super.mode = value;
    });
  }

  late final _$_AuthStateActionController =
      ActionController(name: '_AuthState', context: context);

  @override
  void setPageView(SignInSingUpMode newMode) {
    final _$actionInfo = _$_AuthStateActionController.startAction(
        name: '_AuthState.setPageView');
    try {
      return super.setPageView(newMode);
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateUsername() {
    final _$actionInfo = _$_AuthStateActionController.startAction(
        name: '_AuthState.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_AuthStateActionController.startAction(
        name: '_AuthState.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initialRoute() {
    final _$actionInfo = _$_AuthStateActionController.startAction(
        name: '_AuthState.initialRoute');
    try {
      return super.initialRoute();
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logOut() {
    final _$actionInfo =
        _$_AuthStateActionController.startAction(name: '_AuthState.logOut');
    try {
      return super.logOut();
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearForm() {
    final _$actionInfo =
        _$_AuthStateActionController.startAction(name: '_AuthState.clearForm');
    try {
      return super.clearForm();
    } finally {
      _$_AuthStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usernameErrorMessage: ${usernameErrorMessage},
passwordErrorMessage: ${passwordErrorMessage},
mode: ${mode},
hasError: ${hasError},
hasUsernameError: ${hasUsernameError},
hasPasswordError: ${hasPasswordError}
    ''';
  }
}
