import 'package:auto_route/auto_route_annotations.dart';
import 'package:grimr/presentation/core/pages/splash_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: CustomFirst_Page),
    MaterialRoute(page: CustomSecond_Page),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
