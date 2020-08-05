// TODO: These should not be global, but isntead be wrapped in a class.
// TODO: router.gr.dart is not properly importing them though
import 'package:flutter/material.dart';

Widget customTransition_slides(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return ScaleTransition(
    scale: animation,
    alignment: Alignment.center,
    child: child,
  );
}

Widget customTransition_CustomSecondPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return ScaleTransition(
    scale: animation,
    alignment: Alignment.center,
    child: child,
  );
}
