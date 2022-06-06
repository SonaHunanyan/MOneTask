export 'router.gr.dart';

import 'package:auto_route/auto_route.dart';
import 'package:mone_task/pages/home/home_page.dart';
import 'package:mone_task/pages/sign_in_sign_up/sign_in_sign_up.dart';
import 'package:mone_task/pages/splash_screen.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(
      initial: true,
      page: SplashScreen,
    ),
    AdaptiveRoute(
      page: SignUpSignInPage,
    ),
    AdaptiveRoute(
      page: HomePage,
    ),
  ],
)
class $Router {}
