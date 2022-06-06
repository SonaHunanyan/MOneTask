enum SignInSingUpMode {
  signIn,
  singUp,
}

extension SignInSignUpModeName on SignInSingUpMode {
  String get nameValue {
    switch (this) {
      case SignInSingUpMode.signIn:
        return 'Login';
      case SignInSingUpMode.singUp:
        return 'Sign Up';
    }
  }
}
