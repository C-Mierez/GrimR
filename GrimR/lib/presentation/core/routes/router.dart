import 'package:auto_route/auto_route_annotations.dart';
import 'package:grimr/presentation/core/routes/custom_transitions.dart';
import 'package:grimr/presentation/core/pages/splash_page.dart';
import 'package:grimr/presentation/custom_animations/pages/basic_animation_page.dart';
import 'package:grimr/presentation/custom_animations/pages/refactored_animation_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';

@CustomAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: CustomFirst_Page),
    CustomRoute(
      page: CustomSecond_Page,
      // TODO: Esto no debería quedar así. Debería estar en una clase, no ser global
      // TODO: Por ejemplo: CustomTransitions.slides
      transitionsBuilder: customTrans_double,
      durationInMilliseconds: 400,
    ),
    MaterialRoute(page: BasicAnimationPage),
    MaterialRoute(page: RefactoredAnimationPage),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
