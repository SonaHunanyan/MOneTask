import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mone_task/store/auth_state/auth_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _authState = GetIt.I<AuthState>();

  @override
  void initState() {
    _authState.initialRoute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
