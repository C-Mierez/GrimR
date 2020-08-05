// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../custom_animations/pages/basic_animation_page.dart';
import '../../custom_animations/pages/refactored_animation_page.dart';
import '../../custom_transitions/pages/custom_first_page.dart';
import '../../custom_transitions/pages/custom_second_page.dart';
import '../pages/splash_page.dart';
import 'custom_transitions.dart';

class Routes {
  static const String splashPage = '/';
  static const String customFirst_Page = '/custom-first_-page';
  static const String customSecond_Page = '/custom-second_-page';
  static const String basicAnimationPage = '/basic-animation-page';
  static const String refactoredAnimationPage = '/refactored-animation-page';
  static const all = <String>{
    splashPage,
    customFirst_Page,
    customSecond_Page,
    basicAnimationPage,
    refactoredAnimationPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.customFirst_Page, page: CustomFirst_Page),
    RouteDef(Routes.customSecond_Page, page: CustomSecond_Page),
    RouteDef(Routes.basicAnimationPage, page: BasicAnimationPage),
    RouteDef(Routes.refactoredAnimationPage, page: RefactoredAnimationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    CustomFirst_Page: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomFirst_Page(),
        settings: data,
      );
    },
    CustomSecond_Page: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CustomSecond_Page(),
        settings: data,
        transitionsBuilder: customTrans_double,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    BasicAnimationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BasicAnimationPage(),
        settings: data,
      );
    },
    RefactoredAnimationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RefactoredAnimationPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushCustomFirst_Page() =>
      push<dynamic>(Routes.customFirst_Page);

  Future<dynamic> pushCustomSecond_Page() =>
      push<dynamic>(Routes.customSecond_Page);

  Future<dynamic> pushBasicAnimationPage() =>
      push<dynamic>(Routes.basicAnimationPage);

  Future<dynamic> pushRefactoredAnimationPage() =>
      push<dynamic>(Routes.refactoredAnimationPage);
}
