import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/pages/settings_page.dart';
import 'package:grimr/presentation/core/pages/sliver_settings_page.dart';
import 'package:grimr/presentation/core/pages/sliver_test_page.dart';
import 'package:grimr/presentation/core/pages/splash_page.dart';
import 'package:grimr/presentation/custom_animations/pages/basic_animation_page.dart';
import 'package:grimr/presentation/custom_animations/pages/refactored_animation_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';
import 'package:provider/provider.dart';

class Routes {
  static const String splashScreen = '/';
  static const String settings = '/settings';
  static const String sliverSettings = '/sliverSettings';
  static const String sliverTest = '/sliverTest';
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
      case Routes.settings:
        return _settingsPageRoute(duration: const Duration(milliseconds: 700));
      case Routes.sliverSettings:
        return MaterialPageRoute(
          builder: (_) => const SliverSettingsPage(),
        );
      case Routes.sliverTest:
        return MaterialPageRoute(
          builder: (_) => const SliverTestPage(),
        );

      case Routes.basicAnimation:
        return MaterialPageRoute(
          builder: (_) => BasicAnimationPage(),
        );
      case Routes.refactoredAnimation:
        return _refactoredAnimationPageRoute(
          duration: const Duration(milliseconds: 700),
        );
      case Routes.customFirst:
        return _customFirstPageRoute(
            duration: const Duration(milliseconds: 500));
      case Routes.customSecond:
        // Validation of correct data type
        return _customSecondPageRoute(
          duration: const Duration(milliseconds: 700),
        );
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static PageRouteBuilder _customFirstPageRoute({
    @required Duration duration,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          CustomFirst_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (animation.status == AnimationStatus.reverse) {
          return ScaleTransition(
            scale: animation,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        } else {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        }
        ;
      },
      transitionDuration: duration,
    );
  }

  static PageRouteBuilder _refactoredAnimationPageRoute({
    @required Duration duration,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          RefactoredAnimationPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
      transitionDuration: duration,
    );
  }

  static PageRouteBuilder _settingsPageRoute({
    @required Duration duration,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (animation.status == AnimationStatus.reverse) {
          return _SlidePageTransition(
            animation: animation,
            animationCurve: Curves.easeInToLinear,
            child: child,
          );
        } else {
          return _SlidePageTransition(
            animation: animation,
            animationCurve: Curves.easeOutCubic,
            child: child,
          );
        }
      },
      transitionDuration: duration,
    );
  }

  static PageRouteBuilder _customSecondPageRoute({
    @required Duration duration,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          ListenableProvider<Animation<double>>(
        create: (context) => animation,
        child: CustomSecond_Page(),
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (animation.status == AnimationStatus.reverse) {
          return FadeTransition(
            opacity: Tween<double>(begin: 0, end: 1).animate(
              animation,
            ),
            child: child,
          );
        } else {
          return child;
        }
        ;
      },
      transitionDuration: duration,
    );
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

class _SlidePageTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;
  final Curve animationCurve;

  const _SlidePageTransition({
    Key key,
    @required this.animation,
    @required this.child,
    @required this.animationCurve,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: const Offset(0, 0),
      ).animate(CurvedAnimation(parent: animation, curve: animationCurve)),
      child: child,
    );
  }
}
