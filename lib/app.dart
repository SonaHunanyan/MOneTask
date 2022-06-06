import 'package:flutter/material.dart';
import 'package:mone_task/router/mone_router.dart';

class MOneApp extends StatelessWidget {
  const MOneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: moneRouter.defaultRouteParser(),
      routerDelegate: moneRouter.delegate(
        navigatorObservers: () => [],
      ),
    );
  }
}
