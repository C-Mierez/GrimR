import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/pages/splash_page.dart';
import 'package:grimr/presentation/custom_animations/pages/basic_animation_page.dart';
import 'package:grimr/presentation/custom_animations/pages/refactored_animation_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';
import 'package:provider/provider.dart';

class Routes {
  static const String splashScreen = '/';
  static const String basicAnimation = '/basicAnimation';
  static const String refactoredAnimation = '/refactoredAnimation';
  static const String customFirst = '/customFirst';
  static const String customSecond = '/customSecond';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
        );
      case Routes.basicAnimation:
        return MaterialPageRoute(
          builder: (_) => BasicAnimationPage(),
        );
      case Routes.refactoredAnimation:
        return MaterialPageRoute(
          builder: (_) => RefactoredAnimationPage(),
        );
      case Routes.customFirst:
        return MaterialPageRoute(
          builder: (_) => CustomFirst_Page(),
        );
      case Routes.customSecond:
        // Validation of correct data type
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ListenableProvider<Animation<double>>(
            create: (context) => animation,
            child: CustomSecond_Page(),
          ),
          transitionDuration: const Duration(milliseconds: 700),
        );

        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Container(
          child: const Center(
            child: Text('Route Error'),
          ),
        ),
      );
    });
  }
}

/*
import 'package:auto_route/auto_route_annotations.dart';
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
      durationInMilliseconds: 1000,
    ),
    MaterialRoute(page: BasicAnimationPage),
    MaterialRoute(page: RefactoredAnimationPage),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
*/
